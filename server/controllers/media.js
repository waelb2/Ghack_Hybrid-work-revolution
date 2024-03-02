import {StatusCodes} from "http-status-codes"
import cloudinary  from "../utils/cloudinary.js"
import Screenshot from "../models/screenshot.js"
import fs from "fs"
import path from "path" 

export const uploadScreenshot = async(req, res)=>{
    try {

    const filePath = req.file.path;
    const result = await cloudinary.uploader.upload(filePath,{
        folder:"screenshots"
     }); 
     
     const {userId} = req.user
     const imageUrl = result.secure_url;
     const sc = new Screenshot({
        userId,
        imageUrl,
        createdAt : Date.now()
     });

     sc.save();
     
    fs.unlink(filePath,(err)=>{
        if(err){
            res.status(500).json({
                msg:"Error deleting file"
            })
        }
    })
    res.status(StatusCodes.OK).json({msg:"Screenshot uploaded successfully"})
    } catch (err) {
       res.status(500).json({
        msg:"Internal Server Error"
       })
       console.log(err) 
    }
}