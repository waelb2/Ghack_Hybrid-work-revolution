const { CustomAPIError } = require('../errors')
const { StatusCodes } = require('http-status-codes')
const errorHandlerMiddleware = (err, req, res, next) => {
  let customError = {
    statusCode: err.statusCode || StatusCodes.INTERNAL_SERVER_ERROR,
    msg: err.message || 'Something Went Wrong, Try Again Later'
  }
  if (err instanceof CustomAPIError) {
    return res.status(err.statusCode).json({ msg: err.message })
  }
  if (err.code && err.code === 11000) {
    if (Object.keys(err.keyValue)[0] === 'email') {
      customError.statusCode = 400
      customError.msg = 'Email already exists.'
    }
  }
  if (err.name === 'ValidationError') {
    customError.msg = Object.values(err.errors).map(error => error.message)
    customError.statusCode = 400
  }
  if (err.name === 'CastError') {
    customError.msg = `No id with value : ${err.value}`
    customError.statusCode = 400
  }
  return res.status(customError.statusCode).json({ msg: customError.msg })
}

module.exports = errorHandlerMiddleware
