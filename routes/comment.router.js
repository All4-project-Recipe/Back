const express = require('express');
const { asyncWrap } = require('../utils/myutils')
const {
  createComment,
  updateComment,
  deleteComment,
  getAllComment,
} = require('../controllers/commentController');

const router = express.Router();

router.post("/", asyncWrap(createComment));
router.post("/update", asyncWrap(updateComment));
router.delete("/", asyncWrap(deleteComment));
router.get("/", asyncWrap(getAllComment));

module.exports = router;