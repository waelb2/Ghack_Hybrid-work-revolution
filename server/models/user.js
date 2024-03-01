import mongoose from "mongoose";
import bcrypt from "bcrypt";
import jwt from "jsonwebtoken"
const userSchema=new mongoose.Schema({
    firstName:String,
    lastName:String,
    email:String,
    phoneNumber:String,
    image:String,
    joinDate:Date,
    typeOfWork:String,
    role:String,
    Department:String,
    calendar:{
        type:String,
        default:null
    },
    password:String,
    taskList:[{
        type:mongoose.Types.ObjectId,
        ref:"Task"
    }],
    workdays:[{
        type:mongoose.Types.ObjectId,
        ref:"Workday"
    }],
});

// Pre-save middleware to hash the password.

userSchema.pre('save', async function () {
    const salt = await bcrypt.genSalt(10)
    this.password = await bcrypt.hash(this.password, salt)
  })
  
  // Create a jwt token for the user.
  
  userSchema.methods.createJWT = function () {
    const token = jwt.sign(
      { userId: this._id, firstName: this.firstName,lastName:this.lastName, email:this.email, role:this.role },
      process.env.JWT_SECRET,
      {
        expiresIn: process.env.JWT_LIFETIME
      }
    )
    return token
  }
  userSchema.methods.comparePassword = async function (candidatePassword) {
    return bcrypt.compare(candidatePassword, this.password)
  }


const User=mongoose.model("users",userSchema);

export default User;