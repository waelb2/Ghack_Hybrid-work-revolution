
import jwt from "jsonwebtoken"
const authMiddleware = async (req, res, next) => {
  const authHeader = req.headers.authorization
  if (!authHeader || !authHeader.startsWith('Bearer')) {
    res.status(401).json({
      msg:"Unauthorized",
    })
  return; 
  }
  const token = authHeader.split(' ')[1]
  try {
    const payload = jwt.verify(token, process.env.JWT_SECRET)
    req.user = { userId: payload.userId, name: payload.name }
    next()
  } catch (err) {
    res.status(403).json({
      msg:"Unauthenticated",
    })
  return; 
  }
}
 export default authMiddleware
