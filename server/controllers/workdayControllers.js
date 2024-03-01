
import Workday from "../models/workday.js";


export const getWorkdays=async (req,res)=>{
    try {
        const workdays=await Workday.find();
        res.status(200).json(workdays);
    } catch (error) {
        res.status(404).json({message:error.message});
    }
}

export const getSpecificworkDay=async(req,res)=>{
    try {
        const {id}=req.params;
        const workday=await Workday.findById({_id:id});
        res.status(200).json(workday)
    } catch (error) {
        res.status(404).json({message:error.message});
    }
}

export const createWorkday=async(req,res)=>{
    try {
        const workday =req.body;
        const newWorkday=new Workday(workday);
        await newWorkday.save();
        res.status(201).send(newWorkday);
    } catch (error) {
        res.status(409).json({message:error.message});
    }
}

export const deleteTask=async (req,res)=>{
    try {
        await Workday.deleteOne({_id:req.params.id});
        res.status(201).json({message:"workday deleted succesfullly"});
    } catch (error) {
        res.status(404).json({message:error.message})
    }
}