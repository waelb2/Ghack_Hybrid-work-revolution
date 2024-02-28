import mongoose from "mongoose";

const projectSchema=new mongoose.Schema({
    name:String,
    description:String,
    createdBy:{
        type:mongoose.Types.ObjectId,
        ref:"User"
    },
    createdAt:Date,
    deadline:Date,
    tasks:[{
        type:mongoose.Types.ObjectId,
        ref:"Task"
    }]
})

const Project=mongoose.model("projects",projectSchema)

export default Project;