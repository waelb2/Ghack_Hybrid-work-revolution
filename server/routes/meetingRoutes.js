import express from "express";
import {getMeetings,getSpecificMeeting,createMeeting,deleteMeeting} from "../controllers/taskControllers";

const router=express.Router();

router.get("/",getMeetings);
router.get("/:id",getSpecificMeeting)
router.post("/",createMeeting)
router.delete("/:id",deleteMeeting)

export default router;