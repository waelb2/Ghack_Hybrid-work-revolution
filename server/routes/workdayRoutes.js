import express from "express";
import {getWorkdays,getSpecificWorkday,createWorkday,deleteWorkday} from "../controllers/workdayControllers.js";

const router=express.Router();

router.get("/",getWorkdays);
router.get("/:id",getSpecificWorkday)
router.post("/",createWorkday)
router.delete("/:id",deleteWorkday)

export default router;