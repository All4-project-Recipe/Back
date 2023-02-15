const express = require('express');
const middleware = require('../middlewares/middleware');
// const otherRouter = requre('./other);

const userRouter = require('./user.router');
const commentRouter = require('./comment.router');
const reviewRouter = require('./review.router');
const scrapRouter = require('./scrap.router');
const rankRouter = require('./rank.router');
const checkRouter = require('./check.router');

const router = express.Router();

router.use("/user", userRouter);
router.use("/comment", commentRouter);
router.use("/review", reviewRouter);
router.use("/scrap", scrapRouter);
router.use("/rank", rankRouter);
router.use("/check", checkRouter);
router.use(middleware.errorHandler);
// router.use(otherRouter);

module.exports = router;
