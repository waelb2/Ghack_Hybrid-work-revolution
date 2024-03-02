import express from "express";
import {getTasks,getSpecificTask,createTask,deleteTask,getAllTaskForUser} from "../controllers/taskControllers.js";

const router=express.Router();

router.get("/",getTasks);
router.get("/:id",getSpecificTask)
router.post("/",createTask)
router.delete("/:id",deleteTask)
router.get("/user/:id",getAllTaskForUser)


export default router;