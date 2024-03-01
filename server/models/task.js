import mongoose from "mongoose";

const taskSchema=new mongoose.Schema({
    name:String,
    type:String,
    project:{
        type:mongoose.Types.ObjectId,
        ref:"Project"
    },
    createdby:{
        type:mongoose.Types.ObjectId,
        ref:"User"
    },
    affectedTo:{
        type:mongoose.Types.ObjectId,
        ref:"User"
    },
    createdAt:Date,
    deadline:Date,
    completed:Boolean,
    progress:{
        type:Number,
        min:0,
        max:100,
    },
});
const Task=mongoose.model("tasks",taskSchema);

export default Task;