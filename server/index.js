import express from "express";
import bodyParser from "body-parser";
import cors from "cors";
import mongoose from "mongoose";
import routes from "./routes/routes.js";
import userRoutes from "./routes/userRoutes.js";
import taskRoutes from "./routes/taskRoutes.js";
import projectRoutes from "./routes/projectRoutes.js";
import workdayRoutes from "./routes/workdayRoutes.js";
import meetingRoutes from "./routes/meetingRoutes.js";
import notificationRoutes from "./routes/notificationRoutes.js";

const app=express();
const port=5000;

app.use(bodyParser.json({limit:"30mb",extended:true}));
app.use(bodyParser.urlencoded({limit:"30mb",extended:true}));
app.use(cors());

app.use("/users",userRoutes);
app.use("/tasks",taskRoutes);
app.use("/projects",projectRoutes);
app.use("/workdays",workdayRoutes);
app.use("/meeting",meetingRoutes);
app.use("/notifications",notificationRoutes);

mongoose.connect("mongodb://127.0.0.1:27017/TaskTrack").then(console.log("mongodb is fine")).catch((err)=>console.log(err));

app.listen(port,()=>{
    console.log("server is running on port "+port)
})
