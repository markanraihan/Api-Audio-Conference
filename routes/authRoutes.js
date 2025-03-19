// router.js
const express = require("express");
const router = express.Router();
const { check } = require("express-validator");
const dotenv = require("dotenv");
const auth = require("../middleware/Users");
const adminAuth = require("../middleware/admin"); // Import middleware admin
const AuthController = require("../controller/Auth/AuthController");

dotenv.config();

// @route    POST api/auth/register
// @desc     Register user
// @access   Public
router.post(
  "/register",
  [
    check("name", "name is required").not().isEmpty(),
    check("email", "Please include a valid email").isEmail(),
    check("password", "Please enter a password with 6 or more characters").isLength({ min: 6 }),
    check("whatsapp", "whatsapp is required").not().isEmpty(),
  ],
  AuthController.register
);

// @route    POST api/auth/login
// @desc     Authenticate user & get token
// @access   Public
router.post("/login", [check("email", "Please include a valid email").isEmail(), check("password", "Password is required").exists()], AuthController.login);
router.post("/google", AuthController.googleLogin);
router.post("/logout", auth, AuthController.logout);

// @route    POST api/auth/create-user
// @desc     Create user by admin
// @access   Private (Admin only)
router.post(
  "/create-user",
  adminAuth, // Middleware untuk memastikan hanya admin yang bisa mengakses
  [
    check("name", "name is required").not().isEmpty(),
    check("email", "Please include a valid email").isEmail(),
    check("password", "Please enter a password with 6 or more characters").isLength({ min: 6 }),
    check("whatsapp", "whatsapp is required").not().isEmpty(),
    check("role", "role is required").not().isEmpty(),
  ],
  AuthController.createUserByAdmin
);

//change passowrd
router.put("/password", auth, AuthController.changePassword);
router.post("/reset-password", AuthController.resetPassword);

module.exports = router;