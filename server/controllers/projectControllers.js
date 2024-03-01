
import Project from "../models/project.js";


export const getProjects=async (req,res)=>{
    try {
        const projects=await Project.find();
        res.status(200).json(projects);
    } catch (error) {
        res.status(404).json({message:error.message});
    }
}

export const getSpecificProject=async(req,res)=>{
    try {
        const {id}=req.params;
        const project=await Project.findById({_id:id});
        res.status(200).json(project)
    } catch (error) {
        res.status(404).json({message:error.message});
    }
}

export const createProject=async(req,res)=>{
    try {
        const project =req.body;
        const newProject=new Project(project);
        await project.save();
        res.status(201).send(newProject);
    } catch (error) {
        res.status(409).json({message:error.message});
    }
}

export const deleteProject=async (req,res)=>{
    try {
        await Project.deleteOne({_id:req.params.id});
        res.status(201).json({message:"Project deleted succesfullly"});
    } catch (error) {
        res.status(404).json({message:error.message})
    }
}