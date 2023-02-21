const express = require('express');
const {
  signInKaKao,
}  = require('../controllers/kakaoLoginController.js');
const {
  signIn,
  login,
} = require('../controllers/userController');
const { asyncWrap } = require('../utils/myutils')

const router = express.Router();

router.post('/kakao/signin', signInKaKao);
router.post("/signIn", asyncWrap(signIn));
router.post("/login", asyncWrap(login));

module.exports = router;