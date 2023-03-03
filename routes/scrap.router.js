const express = require('express');
const { asyncWrap } = require('../utils/myutils');
const {
    test,
    deleteScrap
}  = require('../controllers/scrapController.js');
const router = express.Router();

router.post('/test', asyncWrap(test));
router.delete('', asyncWrap(deleteScrap));

module.exports = router;