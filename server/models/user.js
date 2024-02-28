import mongoose from "mongoose";

const userSchema=new mongoose.Schema({
    firstName:String,
    lastName:String,
    email:String,
    phoneNumber:String,
    image:String,
    joinDate:Date,
    typeOfWork:String,
    role:String,
    Department:String,
    calendar:{
        type:String,
        default:null
    },
    password:String,
    taskList:[{
        type:mongoose.Types.ObjectId,
        ref:"Task"
    }],
    workdays:[{
        type:mongoose.Types.ObjectId,
        ref:"Workday"
    }],
});
const User=mongoose.model("users",userSchema);

export default User;