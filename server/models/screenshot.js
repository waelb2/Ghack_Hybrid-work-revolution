import mongoose from "mongoose"

const ScSchema = new mongoose.Schema({
  userId: {
    type: mongoose.Types.ObjectId,
    ref: 'User',
    required: true,
  },
  imageUrl: {
    type: String,
    required: true,
  },
  createdAt: {
    type: Date,
    default: Date.now,
  },
});

const Screenshot = mongoose.model('Screenshot', ScSchema);

export default Screenshot;