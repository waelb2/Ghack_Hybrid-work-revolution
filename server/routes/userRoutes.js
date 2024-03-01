import express from "express";
import { getUsers,getSpecificUser,updateUser,createUser,deleteUser } from "../controllers/userControllers.js";

const router=express.Router();

router.get("/",getUsers);
router.get("/:id",getSpecificUser)
router.post("/",createUser)
router.patch("/:id",updateUser)
router.delete("/:id",deleteUser)

export default router;