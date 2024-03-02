import mongoose from "mongoose"

const workdaySchema=mongoose.Schema({
    user:{
        type:mongoose.Schema.ObjectId,
        ref:"User"
    },
    begin:Date,
    end:Date,
    hoursWorked:{
        type:Number,
        default:0
    },
    report:String,
    typeOfWorkday:{
        type:String,
        enum:["onsite","remote"],
    }

})

const Workday=mongoose.model("workdays",workdaySchema);

export default Workday;