import mongoose from "mongoose";

const notificationSchema=new mongoose.Schema({
    title:String,
    description:String,
    users:[{
        type:mongoose.Types.ObjectId,
        ref:"User"
    }],
    createdAt:Date,
    readAt:Date,
    trash:Boolean
})

const Notification= mongoose.model("notifications",notificationSchema)
export default Notification;