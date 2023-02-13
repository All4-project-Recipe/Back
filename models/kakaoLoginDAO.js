const dataSource = require('./database');

const getUserById = async kakaoId => {
    return await dataSource.query(
        `
        SELECT
            email,
            name,
            kakako_id
        FROM
            user
        WHERE
            kakao_id = ?
        `,
        [kakaoId]
    );
};

const signUp = async (email, name, kakaoId) => {
  return await dataSource.query(
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
