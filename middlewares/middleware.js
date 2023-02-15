const express = require('express');
const multer = require('multer');
const fs = require('fs');
const { yellow, red, blue, green } = require('cli-color');

const NODE_ENV = process.env.NODE_ENV;
const appendPath = NODE_ENV? `${NODE_ENV}`: '.';

const errorHandler = (err, req, res, next) => {
  // 흐름상 에러가 검출되면 로그 표시 및 클라이언트에게 전달
  let responseInfo = err;
  if (err.sqlMessage) {
    console.log(err.sqlMessage);
    responseInfo = { message: 'failed', status: 500, ...err };
  }
  console.log(`${red("ERR\t|")}`, err);
  res
    .status(responseInfo.status || 500)
    .json({ message: responseInfo.message || '' });
};

const getTempDir = () => {
  return `${__dirname}/../../uploads/${appendPath}/temp`
}

const getUploadRootDir = () => {
  return `${__dirname}/../../uploads/${appendPath}/`;
}

const fileFilter = (req, file, cb) => {
  const { fieldname, mimetype } = file;
  const imageNameList = ['thumbnail', 'profileImg'];
  const found = imageNameList.find(v => v == fieldname);
  if (found && !(mimetype.includes("image"))) {
    cb({ message: '이미지 형식이 아닙니다.', status: 400, name: '' });
  }
  cb(null, true);
}

const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, getTempDir());
  }
})

const upload = multer({ storage: storage, fileFilter });

const makeUploadFolder = () => {
  try {
    fs.readdirSync(getTempDir())
  } catch (e) {
    console.log("업로드 폴더를 생성합니다.");
    fs.mkdirSync(getTempDir(), { recursive: true });
  }
}

module.exports = {
  upload,
  getTempDir,
  getUploadRootDir,
  makeUploadFolder,
  errorHandler,
}