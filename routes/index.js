const express = require('express');

// const otherRouter = requre('./other);

const userRouter = require('./user.router');
const commentRouter = require('./comment.router');
const reviewRouter = require('./review.router');
const recipeRouter = require('./recipe.router');
const middleware = require('../middlewares/middleware');

const router = express.Router();

router.use("/user", userRouter);
router.use("/comment", commentRouter);
router.use("/review", reviewRouter);
router.use("/recipe", recipeRouter);
router.use(middleware.errorHandler);
// router.use(otherRouter);

module.exports = router;
