import express from "express";
import {getTasks,getSpecificTask,createTask,deleteTask} from "../controllers/taskControllers";

const router=express.Router();

router.get("/",getTasks);
router.get("/:id",getSpecificTask)
router.post("/",createTask)
router.delete("/:id",deleteTask)

export default router;