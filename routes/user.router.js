const express = require('express');
const {
  signIn,
  login,
} = require('../controllers/userController');
const { asyncWrap } = require('../utils/myutils')

const router = express.Router();

router.post("/signIn", asyncWrap(signIn));
router.post("/login", asyncWrap(login));

module.exports = router;