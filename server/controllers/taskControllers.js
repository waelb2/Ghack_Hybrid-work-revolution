
import Task from "../models/task.js";


export const getTasks=async (req,res)=>{
    try {
        const tasks=await Task.find();
        res.status(200).json(tasks);
    } catch (error) {
        res.status(404).json({message:error.message});
    }
}

export const getSpecificTask=async(req,res)=>{
    try {
        const {id}=req.params;
        const task=await Task.findById({_id:id});
        res.status(200).json(task)
    } catch (error) {
        res.status(404).json({message:error.message});
    }
}

export const createTask=async(req,res)=>{
    try {
        const task =req.body;
        const newTask=new Task(task);
        await newTask.save();
        res.status(201).send(newTask);
    } catch (error) {
        res.status(409).json({message:error.message});
    }
}

export const deleteTask=async (req,res)=>{
    try {
        await Task.deleteOne({_id:req.params.id});
        res.status(201).json({message:"Task deleted succesfullly"});
    } catch (error) {
        res.status(404).json({message:error.message})
    }
}