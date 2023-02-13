const express = require('express');

// const otherRouter = requre('./other);

const userRouter = require('./user.router');

const router = express.Router();

router.use("/user", userRouter);
// router.use(otherRouter);

module.exports = router;
