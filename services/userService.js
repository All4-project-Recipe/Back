const userDAO = require('../models/userDAO');
const jwt = require('jsonwebtoken');
const bcrypt = require('bcryptjs');

const signUp = async (user_Id, password, name, email) => {

  const existUserById = await userDAO.existUserById(user_Id);
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

  await userDAO.signUp(user_Id, hashedPassword, name, email);

}

const login = async (user_Id, password) => {
  const existUserById = await userDAO.existUserById(user_Id);


  if(!existUserById) {
    throw {
      status : 400,
      message : "존재하지 않는 아이디입니다.",
    };
  }
  
  const isSame = bcrypt.compareSync(password, existUserById.password);
  if (isSame === false) {
    throw {
      message: '비밀번호가 맞지 않습니다.',
      status: 400,
    };
  }

  const token = jwt.sign({ id: existUserById.id }, process.env.SECRET_KEY);
  return token;
}

module.exports = {
    signUp,
    login,
}