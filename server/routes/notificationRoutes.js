import express from "express";
import {getNotifications,getSpecificNotification,createNotification,deleteNotification} from "../controllers/notificationControllers.js";

const router=express.Router();

router.get("/",getNotifications);
router.get("/:id",getSpecificNotification)
router.post("/",createNotification)
router.delete("/:id",deleteNotification)

export default router;