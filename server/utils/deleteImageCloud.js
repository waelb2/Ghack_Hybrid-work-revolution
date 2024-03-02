import cloudinary from "./cloudinary.js";
async function deleteImage(publicId) {
  try {
    const result = await cloudinary.uploader.destroy(publicId);
    console.log('Image deleted successfully:', result);
  } catch (error) {
    console.error('Error deleting image:', error);
  }
}
export default deleteImage;

// return deleteImage;