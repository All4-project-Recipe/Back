const express = require('express');
const { signInKaKao }  = require('../controllers/kakaoLoginController.js');

const router = express.Router();

router.post('/kakao/signin', signInKaKao);

module.exports = router;