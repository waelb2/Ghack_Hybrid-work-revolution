import express from "express";
import bodyParser from "body-parser";
import cors from "cors";
import mongoose from "mongoose";
import routes from "./routes/routes.js"

const app=express();
const port=5000;

app.use(bodyParser.json({limit:"30mb",extended:true}));
app.use(bodyParser.urlencoded({limit:"30mb",extended:true}));
app.use(cors());

app.use("/",routes)
mongoose.connect("mongodb://127.0.0.1:27017/TaskTrack").then(console.log("mongodb is fine")).catch((err)=>console.log(err));

app.listen(port,()=>{
    console.log("server is running on port "+port)
})
