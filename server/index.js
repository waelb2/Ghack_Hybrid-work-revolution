import express from "express";
import bodyParser from "body-parser";
import cors from "cors";
import dotenv from 'dotenv';
dotenv.config()
import connectDB from "./db/connect.js";
import userRoutes from "./routes/userRoutes.js";
import taskRoutes from "./routes/taskRoutes.js";
import projectRoutes from "./routes/projectRoutes.js";
import workdayRoutes from "./routes/workdayRoutes.js";
import meetingRoutes from "./routes/meetingRoutes.js";
import notificationRoutes from "./routes/notificationRoutes.js";

const app=express();


app.use(bodyParser.json({limit:"30mb",extended:true}));
app.use(bodyParser.urlencoded({limit:"30mb",extended:true}));
app.use(cors());

app.use("/users",userRoutes);
app.use("/tasks",taskRoutes);
app.use("/projects",projectRoutes);
app.use("/workdays",workdayRoutes);
app.use("/meeting",meetingRoutes);
app.use("/notifications",notificationRoutes);



const port = process.env.PORT || 3000

const start = async () => {
  try {
    await connectDB(process.env.URI)
    console.log('DATA BASE CONNECTED')
    app.listen(port, () =>
      console.log(`Server is listening on port ${port}...`)
    )
  } catch (error) {
    console.log(error)
  }
}

start()
