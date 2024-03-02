
import Meeting from "../models/meeting.js";
import {StatusCodes}  from "http-status-codes"

export const getMeetings=async (req,res)=>{
    try {
        const meetings=await Meeting.find();
        res.status(200).json(meetings);
    } catch (error) {
        res.status(404).json({message:error.message});
    }
}

export const getSpecificMeeting=async(req,res)=>{
    try {
        const {id}=req.params;
        const meeting=await Meeting.findById({_id:id});
        res.status(StatusCodes.OK).json(meeting)
    } catch (error) {
        res.status(404).json({message:error.message});
    }
}

export const createMeeting=async(req,res)=>{
    try {
        const meeting =req.body;
        const newMeeting=new Meeting(task);
        await newMeeting.save();
        res.status(201).send(newMeeting);
    } catch (error) {
        res.status(409).json({message:error.message});
    }
}

export const deleteMeeting=async (req,res)=>{
    try {
        await Meeting.deleteOne({_id:req.params.id});
        res.status(201).json({message:"Meeting deleted succesfullly"});
    } catch (error) {
        res.status(404).json({message:error.message})
    }
}