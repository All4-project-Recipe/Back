const express = require('express');

// const otherRouter = requre('./other);

const userRouter = require('./user.router');
const commentRouter = require('./comment.router');

const router = express.Router();

router.use("/user", userRouter);
router.use("/comment", commentRouter);
// router.use(otherRouter);

module.exports = router;
