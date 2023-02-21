const express = require('express');
const {
  signUp,
  login,
} = require('../controllers/userController');
const { asyncWrap } = require('../utils/myutils')

const router = express.Router();

router.post("/signUp", asyncWrap(signUp));
router.post("/login", asyncWrap(login));

module.exports = router;