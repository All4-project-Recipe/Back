const database = require('./database');

const getAllRecipe = async () => {
  const result = await database.query(`
    SELECT DISTINCT
      r.id,
      r.title,
      user.name,
      r.description AS recipe_description,
      r.amount,
      r.spend_time,
      r.level,
      r.scrap_num,
      i.igd,
      c.writer,
      c.description,
      c.created_at,
      st.step,
      review.rv,
      r.hit,
      review.avgRating,
      r.created_at
    FROM 
      recipe AS r 
    JOIN 
      (SELECT
        recipe_id,
        GROUP_CONCAT(JSON_OBJECT('name', name, 'amount', amount)) AS igd
      FROM ingredients
      GROUP BY recipe_id) AS i ON r.id = i.recipe_id
    LEFT JOIN comment c ON r.id = c.recipe_id
    JOIN 
      (SELECT
        recipe_id,
        GROUP_CONCAT(JSON_OBJECT('recipe_num', recipe_num, 'description', description)) AS step
      FROM step
      GROUP BY recipe_id
      ORDER BY recipe_id) AS st ON r.id = st.recipe_id
    JOIN user ON r.writer = user.id
    LEFT JOIN review rv ON r.id = rv.recipe_id
    LEFT JOIN
      (SELECT
        recipe_id,
        avg(rating) AS avgRating,
        GROUP_CONCAT(JSON_OBJECT('writer', user.name, 'description', description, 'rating', rating)) AS rv
      FROM
        review
      JOIN user ON user.id = review.writer
      GROUP BY
        recipe_id) AS review ON r.id = review.recipe_id
  `)
  .then((answer) => {
    return [...answer].map((item)=> {
      return {...item, igd: JSON.parse('[' + item.igd + ']'), step: JSON.parse('[' + item.step + ']'), rv: JSON.parse('[' + item.rv + ']')}}
    )
  });
  return result;
}

const getRecipeById = async (id) => {

  database.query(`
    UPDATE
      recipe
    SET
      hit = hit + 1
    WHERE recipe.id = ?
  `,[id])

  const result = await database.query(`
    SELECT DISTINCT
      r.id,
      r.title,
      user.name,
      r.description as recipe_description,
      r.amount,
      r.spend_time,
      r.level,
      r.scrap_num,
      i.igd,
      c.writer,
      c.description,
      c.created_at,
      st.step,
      r.hit,
      review.rv,
      review.avgRating,
      r.created_at
    FROM 
      recipe AS r 
    JOIN 
      (SELECT
        recipe_id,
        GROUP_CONCAT(JSON_OBJECT('name', name, 'amount', amount)) AS igd
      FROM ingredients
      GROUP BY recipe_id) AS i ON r.id = i.recipe_id
    LEFT JOIN comment c ON r.id = c.recipe_id
    JOIN 
      (SELECT
        recipe_id,
        GROUP_CONCAT(JSON_OBJECT('recipe_num', recipe_num, 'description', description)) AS step
      FROM step
      GROUP BY recipe_id
      ORDER BY recipe_id) AS st ON r.id = st.recipe_id
    JOIN user ON r.writer = user.id
    LEFT JOIN review rv ON r.id = rv.recipe_id
    LEFT JOIN
      (SELECT
        recipe_id,
        avg(rating) AS avgRating,
        GROUP_CONCAT(JSON_OBJECT('writer', user.name, 'description', description, 'rating', rating)) AS rv
      FROM
        review
      JOIN user ON user.id = writer
      GROUP BY
        recipe_id) AS review ON r.id = review.recipe_id
    WHERE r.id = ?
  `, [id])
  .then((answer) => {
    return [...answer].map((item)=> {
      return {...item, igd: JSON.parse('[' + item.igd + ']'), step: JSON.parse('[' + item.step + ']'), rv: JSON.parse('[' + item.rv + ']')}
    })
  });
  return result;
}

const createRecipe = async (writer, title, description, amount, spend_time, level, thumbnail, ingredients, step) => {
  await database.query(`
    INSERT INTO
      recipe (writer, title, description, amount, spend_time, level, img_url)
    VALUES
      (?, ?, ?, ?, ?, ?, ?)
  `, [writer, title, description, amount, spend_time, level, thumbnail]);

  const [recipe_id] = await database.query(`
    SELECT
      max(id) as id
    FROM
      recipe;
  `);

  ingredients.forEach(async (item) => {
    await database.query(`
    INSERT INTO
      ingredients (recipe_id, name, amount)
    VALUES
      (?, ?, ?)
  `, [recipe_id.id ,item.name, item.amount]);
  });
  
  step.forEach(async (item) => {
    await database.query(`
    INSERT INTO
      step (recipe_id, recipe_num, description)
    VALUES
      (?, ?, ?)
  `, [recipe_id.id ,item.recipe_num, item.description]);
  });
}

module.exports = {
  getAllRecipe,
  getRecipeById,
  createRecipe,
}