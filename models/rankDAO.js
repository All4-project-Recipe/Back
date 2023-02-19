const database = require('./database');

const rateRanking = async () => {
  const result = await database.query(`
    SELECT
      r.*,
      rate2.avgRating,
      rate2.rate
    FROM
      recipe r
    JOIN
      (SELECT
        recipe_id,
        AVG(rating) AS avgRating,
        GROUP_CONCAT(JSON_OBJECT('rating', rating)) AS rate
      FROM
        review
      GROUP BY
        recipe_id) AS rate2 ON r.id = rate2.recipe_id
    ORDER BY
      avgrating desc
  `)
  .then((answer) => {
    return [...answer].map((item)=> {
      return {...item, rate: JSON.parse('[' + item.rate + ']')}
    })
  });
  
  return result;
}

module.exports = {
  rateRanking
}