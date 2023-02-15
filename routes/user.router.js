const express = require('express');
const { signInKaKao }  = require('../controllers/kakaoLoginController.js');

const router = express.Router();



router.get('/login', signInKaKao);

module.exports = router;