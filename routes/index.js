const express = require('express');

// const otherRouter = requre('./other);

const userRouter = require('./user.router');
const commentRouter = require('./comment.router');
const reviewRouter = require('./review.router');

const router = express.Router();

router.use("/user", userRouter);
router.use("/comment", commentRouter);
router.use("/review", reviewRouter)
// router.use(otherRouter);

module.exports = router;
