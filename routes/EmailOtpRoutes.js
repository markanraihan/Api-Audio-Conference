const express = require('express');
const { requestOTP, verifyOTP } = require('../controller/EmailOtp/EmailOtpController');

const router = express.Router();

router.post('/request-otp', requestOTP);
router.post('/verify-otp', verifyOTP);

module.exports = router;