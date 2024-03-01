import express from "express";
import {getProjects,getSpecificProject,createProject,deleteProject} from "../controllers/taskControllers";

const router=express.Router();

router.get("/",getProjects);
router.get("/:id",getSpecificProject)
router.post("/",createProject)
router.delete("/:id",deleteProject)

export default router;