import express from "express";
import multer from "multer"
const upload = multer({ dest: 'uploads/' }); 
import { uploadScreenshot } from "../controllers/media.js";

const router = express.Router();

router.post('/screenshot',upload.single("screenshot"), uploadScreenshot)
// router.post("/screenshot",uploadScreenshot);
export default router;