
import {StatusCodes} from "http-status-codes"
import BadRequestError from "../errors/bad-request.js";
import UnauthenticatedError from "../errors/unauthenticated.js";
import User from "../models/user.js";
export const login = async(req, res)=>{
    try {
        const { email, password } = req.body;
      
        if (!email || !password) {
          throw new BadRequestError("Please provide both email and password")
        }
      
        const user = await User.findOne({ email });
      
        if (!user) {
          throw new UnauthenticatedError("Invalid Credentials")
        }
      
        const validPassword = await user.comparePassword(password);
      
        if (!validPassword) {
          throw new UnauthenticatedError("Invalid Credentials")
        }
      
        // Generate a JWT with a 1-day expiry
        const token = user.createJWT();
      
        return res.status(StatusCodes.OK).json({ user: { name: user.name, verified: user.verified }, token });
      
      } catch (err) {
        console.error(err);
        return res.status(500).json({ msg: "Internal Server Error" });
      }
      
    }



