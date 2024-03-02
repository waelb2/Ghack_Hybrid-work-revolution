import {StatusCodes} from "http-status-codes"
import cloudinary  from "../utils/cloudinary.js"
import Screenshot from "../models/screenshot.js"
import axios from "axios"
import fs from "fs"
import path from "path" 
import deleteImage from "../utils/deleteImageCloud.js"

export const uploadScreenshot = async(req, res)=>{
    try {
   const filePath = req.file.path;
   
   const result = await cloudinary.uploader.upload(filePath,{
      folder:"screenshots"
   }); 
   const ImagePublicId = result.public_id; 
   // const response=await axios.post("https://c7e5-41-111-189-195.ngrok-free.app/",
   // {img_url:"https://www.altium.com/documentation/sites/default/files/wiki_attachments/298457/Properties%20Image.png", job_title:"softaware enginner"});
   // console.log(response.data)
   try {
      const response=await fetch("https://34dd-41-111-189-195.ngrok-free.app/",{method:"POST", headers: {
      'Content-Type': 'application/json'
    },body:JSON.stringify({img_url:"https://www.altium.com/documentation/sites/default/files/wiki_attachments/298457/Properties%20Image.png", job_title:"design"})})
    const data= await response.json();
    console.log(data);
    res.send("hello");

   } catch (error) {
      console.log(error.message)
   }
   
   if(response.data.result=="yes"){
      console.log("yes")
      deleteImage(ImagePublicId);
   }else{
      console.log("no")
      const {userId} = req.user
      const imageUrl = result.secure_url;
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
    res.status(StatusCodes.OK).json({msg:"Screenshot uploaded successfully"})
    } catch (err) {

       console.log(err) 
    }
}