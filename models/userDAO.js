const database = require('./database');

const signUp = async (user_Id, hashedPassword, name, email) => {
  await database.query(`
    INSERT INTO
      user (user_id, password, name, email)
    VALUES
      (?, ?, ?, ?)
  `, [user_Id, hashedPassword, name, email]);
}

const existUserById = async (user_Id) => {
  const [result] = await database.query(`
    SELECT
      *
    FROM
      user
    WHERE
      user_Id = (?)
  `, [user_Id]);

  return result;
}

const existUserByEmail = async (email) => {
  const [result] = await database.query(`
    SELECT
      *
    FROM
      user
    WHERE
      email = ?
  `, [email]);
  return result;
}

module.exports = {
  signUp,
  existUserById,
  existUserByEmail,
}