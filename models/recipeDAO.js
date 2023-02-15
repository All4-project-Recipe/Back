const database = require('./database');

const getAllRecipe = async () => {
  const result = await database.query(`
  select distinct r.title,
GROUP_CONCAT(JSON_OBJECT('name', i.name, 'amount', i.amount)) as ingredient,
st.step,
user.name
from 
recipe as r 
join ingredients i on r.id = i.recipe_id
left join 
comment c 
on r.id = c.recipe_id
join 
(select
   recipe_id,
    GROUP_CONCAT(JSON_OBJECT('recipe_num', recipe_num, 'description', description)) as step
from step
group by recipe_id order by recipe_id) as st
on r.id = st.recipe_id
join user 
on r.writer = user.id
left join
review rv
on r.id = rv.recipe_id
left join
(select
   recipe_id,
   avg(rating) as avgRating,
   GROUP_CONCAT(JSON_OBJECT('writer', writer, 'description', description, 'rating', rating)) as rv
from review
group by recipe_id) as review
on r.id = review.recipe_id
group by 
	r.title, st.step, user.name

  `)
  .then((data) => {
    return [...data].map((item) => {
      return {...item, ingredient: JSON.parse(item.ingredient)}
    })
  });
  return result;
}

module.exports = {
  getAllRecipe,
}