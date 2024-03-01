
import User from "../models/user.js";
export const login = async(req, res)=>{
    try {
        const { email, password } = req.body;
      
        if (!email || !password) {
          return res.status(400).json({ msg: "Please provide both email and password" });
        }
      
        const user = await User.findOne({ email });
      
        if (!user) {
          return res.status(403).json({ msg: "Invalid Credentials" });
        }
      
        const validPassword = await user.comparePassword(password);
      
        if (!validPassword) {
          return res.status(403).json({ msg: "Invalid Credentials" });
        }
      
        // Generate a JWT with a 1-day expiry
        const token = user.createJWT();
      
        return res.status(200).json({ user: { name: user.name, verified: user.verified }, token });
      } catch (err) {
        console.error(err);
        return res.status(500).json({ msg: "Internal Server Error" });
      }
      
    }



