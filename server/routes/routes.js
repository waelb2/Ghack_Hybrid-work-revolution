import express from "express";

const router=express.Router();

router.get("/",()=>{
    console.log("hello world")
})

export default router;