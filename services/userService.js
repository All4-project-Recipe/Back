const userDAO = require('../models/userDAO');
const jwt = require('jsonwebtoken');
const bcrypt = require('bcryptjs');

const signIn = async (user_Id, password, name, email) => {

  const existUserById = await userDAO.existUserById(user_id);
  if(existUserById) {
    throw {
      message: '중복된 아이디입니다.',
      status: 400,
    };
  }

  const existUserByEmail = await userDAO.existUserByEmail(email);
  if(existUserByEmail) {
    throw {
      message : '중복된 이메일입니다.',
      status : 400,
    }
  }

  const hashedPassword = bcrypt.hashSync(password, bcrypt.genSaltSync());

  await userDAO.signIn(user_Id, hashedPassword, name, email);

}

module.exports = {
    signIn,
}