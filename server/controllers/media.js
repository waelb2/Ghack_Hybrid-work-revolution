import {StatusCodes} from "http-status-codes"
import cloudinary  from "../utils/cloudinary.js"
import Screenshot from "../models/screenshot.js"
export const uploadScreenshot = async(req, res)=>{
    try {
     const result = await cloudinary.uploader.upload(req.file.path,{
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
     
    res.status(StatusCode.OK).json({msg:"Screenshot uploaded successfully"})
    } catch (err) {
       res.status(500).json({
        msg:"Internal Server Error"
       })
       console.log(err) 
    }
}