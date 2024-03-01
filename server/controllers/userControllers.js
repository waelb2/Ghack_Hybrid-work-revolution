import User from "../models/user.js";


export const getUsers=async (req,res)=>{
    try {
        const users=await User.find();
        res.status(200).json(users);
    } catch (error) {
        res.status(404).json({message:error.message});
    }
}

export const getSpecificUser=async(req,res)=>{
    try {
        const {id}=req.params;
        const user=await User.findById({_id:id});
        res.status(200).json(user)
    } catch (error) {
        res.status(404).json({message:error.message});
    }
}

export const createUser=async(req,res)=>{
    try {
        const user =req.body;
        const newUser=new User(user);
        await newUser.save();
        res.status(201).send(newUser);
    } catch (error) {
        res.status(409).json({message:error.message});
    }
}

export const updateUser=async(req,res)=>{
    try {
        const oldUser=await User.findById({_id:req.params.id});
        const updatedUser={
            firstName:req.body.firstName || oldUser.firstName ,
            lastName:req.body.lastName || oldUser.lastName,
            email:req.body.email || oldUser.email,
            phoneNumber:req.body.phoneNumber || oldUser.phoneNumber,
            image:req.body.image || oldUser.image,
            joinDate:req.body.typeOfWork || oldUser.typeOfWork,
            role:req.body.role || oldUser.role,
            Department:req.body.Department || oldUser.Department,
            calendar:req.body.calendar || oldUser.calendar,
            password:req.body.password || oldUser.password,
            taskList:req.body.taskList || oldUser.taskList,
            workdays:req.body.workdays || oldUser.workdays,
        };
        const response =await User.findByIdAndUpdate({_id:req.params.id},updatedUser,{new:true});
        res.status(201).json(response);
    } catch (error) {
        res.status(409).json({message:error.messge});
    }
}

export const deleteUser=async (req,res)=>{
    try {
        await User.deleteOne({_id:req.params.id});
        res.status(201).json({message:"User deleted succesfullly"});
    } catch (error) {
        res.status(404).json({message:error.message})
    }
}