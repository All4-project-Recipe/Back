const express = require('express');
const { asyncWrap } = require('../utils/myutils');
const {
  mypageComment,
  mypageRecipe,
  mypageScrap
} = require('../controllers/mypageController');

const router = express.Router();

router.post("/mypageComment", asyncWrap(mypageComment));
router.post("/mypageRecipe", asyncWrap(mypageRecipe));
router.post("/mypageScrap", asyncWrap(mypageScrap));

module.exports = router;