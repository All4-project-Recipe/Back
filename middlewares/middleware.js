const express = require('express');
const multer = require('multer');
const fs = require('fs');

const getTempDir = () => {
    return `${__dirname}/../../uploads/${appendPath}/temp`
}

const getUploadRootDir = () => {
    return `${__dirname}/../../uploads/${appendPath}/`;
}

const fileFilter = (req, file, cb) => {
    const {fieldname, mimetype} = file;
    const imageNameList = ['thumbnail', 'profileImg'];
    const found = imageNameList.find(v => v == fieldname);
    if (found && !(mimetype.includes("image"))) {
        cb({message : '이미지 형식이 아닙니다.', status : 400, name : ''});
    }
    cb(null, true);
}

const storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, getTempDir());
    }
})

const upload = multer({ storage: storage, fileFilter});

const makeUploadFolder = () => {
    try {
        fs.readdirSync(getTempDir())
    } catch (e) {
        console.log("업로드 폴더를 생성합니다.");
        fs.mkdirSync(getTempDir(), {recursive: true});
    }
}

module.exports = {
    upload,
    getTempDir,
    getUploadRootDir,
    makeUploadFolder,
}