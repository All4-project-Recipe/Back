const { signInKaKao }  = require('../controllers/kakaoLoginController.js');
const express = require('express');

const router = express.Router();

router.post('/login', signInKaKao);


module.exports = router;

