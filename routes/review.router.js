const express = require('express');
const { asyncWrap } = require('../utils/myutils');
const {
  createReview,
  updateReview,
  deleteReview,
  getAllReview,
} = require('../controllers/reviewController');
const router = express.Router();

router.post("", asyncWrap(createReview));
router.post("/update", asyncWrap(updateReview));
router.delete("", asyncWrap(deleteReview));
router.get("", asyncWrap(getAllReview));

module.exports = router;