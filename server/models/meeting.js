import mongoose from "mongoose";

const meetingSchema=new mongoose.Schema({
    name:String,
    description:String,
    createdBy:{
        type:mongoose.Types.ObjectId,
        ref:"User"
    },
    link:String,
    users:[{
        type:mongoose.Types.ObjectId,
        ref:"User"
    }],
    begin:Date,
    end:Date
})

const Meeting=mongoose.model("meetings",meetingSchema);

export default Meeting;