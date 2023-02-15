const database = require('./database');

const rateRanking = async () => {
  const result = await database.query(`
    select r.*,
    rate2.avgRating,
    rate2.rate
    from recipe r
    join
    (select recipe_id,
    avg(rating) as avgRating,
      GROUP_CONCAT(JSON_OBJECT('rating', rating)) as rate
    from review
    group by recipe_id) as rate2
    on r.id = rate2.recipe_id
    order by avgrating desc
  `);
  
  return result;
}

module.exports = {
  rateRanking
}