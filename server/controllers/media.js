import {StatusCodes} from "http-status-codes"
import cloudinary  from "../utils/cloudinary.js"
import Screenshot from "../models/screenshot.js"
import axios from "axios"
import fs from "fs"
import path from "path" 
import deleteImage from "../utils/deleteImageCloud.js"
import User from "../models/user.js"

export const uploadScreenshot = async(req, res)=>{
    try {
   const filePath = req.file.path;
   //const {userId} = req.user
   const userId="65e1dca90f9a404d14e90efc";
   
   const result = await cloudinary.uploader.upload(filePath,{
      folder:"screenshots"
   }); 
   const ImagePublicId = result.public_id; 
   const imageUrl = result.secure_url;

   try {
      const user = await User.findById(userId);
      var response =await fetch(process.env.MODEL_SERVER,{method:"POST", headers: {
      'Content-Type': 'application/json'
    },body:JSON.stringify({img_url:imageUrl, job_title:user.Department})})
    var data= await response.json();

   } catch (error) {
      console.log(error.message)
   }
   
   if(data.result=="yes"){
      deleteImage(ImagePublicId);
   }else{
      const sc = new Screenshot({
        userId,
        imageUrl,
        createdAt : Date.now()
     });

     sc.save();
   }
      
    fs.unlink(filePath,(err)=>{
        if(err){
            res.status(500).json({
                msg:"Error deleting file"
            })
        }
    })
    res.status(StatusCodes.OK).json({msg:"Screenshot uploaded successfully and AI result is "+data.result});
    } catch (err) {

       console.log(err) 
    }
}