
import Notification from "../models/notification.js";


export const getNotifications=async (req,res)=>{
    try {
        const notifications=await Notification.find();
        res.status(200).json(notifications);
    } catch (error) {
        res.status(404).json({message:error.message});
    }
}

export const getSpecificNotification=async(req,res)=>{
    try {
        const {id}=req.params;
        const notification=await Notification.findById({_id:id});
        res.status(200).json(notification)
    } catch (error) {
        res.status(404).json({message:error.message});
    }
}

export const createNotification=async(req,res)=>{
    try {
        const notification =req.body;
        const newNotification=new Notification(notification);
        await newNotification.save();
        res.status(201).send(newNotification);
    } catch (error) {
        res.status(409).json({message:error.message});
    }
}

export const deleteNotification=async (req,res)=>{
    try {
        await Notification.deleteOne({_id:req.params.id});
        res.status(201).json({message:"Notification deleted succesfullly"});
    } catch (error) {
        res.status(404).json({message:error.message})
    }
}