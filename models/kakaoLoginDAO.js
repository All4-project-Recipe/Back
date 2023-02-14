const database = require('./database');

const getUserById = async kakaoId => {
    console.log("1");
    const [user] = await database.query(
      `
      SELECT
          email,
          name,
          kakao_id
      FROM
          user
      WHERE
          kakao_id = ?
      `,
      [kakaoId]
  );
    return user;
};

const signUp = async (email, name, kakaoId) => {
  console.log("2");
  return await database.query(
    `
    INSERT INTO user (
      email,
      name,
      kakao_id
    )
    VALUES (?, ?, ?)
    `,
    [email, name, kakaoId]
    );
};

module.exports = {
  getUserById,
  signUp,
}
