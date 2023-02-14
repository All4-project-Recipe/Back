-- migrate:up
CREATE TABLE user (
    id INTEGER PRIMARY KEY auto_increment,
    name VARCHAR(200),
    email VARCHAR(80),
    kakao_id VARCHAR(30)
);

CREATE TABLE recipe (
    id INTEGER PRIMARY KEY auto_increment,
    title VARCHAR(100),
    writer VARCHAR(30) REFERENCES user(id),
    description VARCHAR(2000),
    amount INTEGER,
    spend_time INTEGER,
    level INTEGER,
    scrap_num INTEGER,
    tip VARCHAR(2000),
    created_at timestamp default now()
);

CREATE TABLE ingredients (
    id INTEGER PRIMARY KEY auto_increment,
    recipe_id INTEGER REFERENCES recipe(id),
    name VARCHAR(30),
    amount VARCHAR(30)
);

CREATE TABLE step (
    id INTEGER PRIMARY KEY auto_increment,
    recipe_id INTEGER REFERENCES recipe(id),
    recipe_num INTEGER,
    description VARCHAR(1000),
    img_url VARCHAR(100)
);

CREATE TABLE comment (
    id INTEGER PRIMARY KEY auto_increment,
    writer int REFERENCES user(id),
    recipe_id INTEGER REFERENCES recipe(id),
    description VARCHAR(200),
    created_at timestamp default now()
);

CREATE TABLE review (
    id INTEGER PRIMARY KEY auto_increment,
    writer int REFERENCES user(id),
    recipe_id INTEGER REFERENCES recipe(id),
    description VARCHAR(500),
    rating INTEGER
);

CREATE TABLE scrap (
    id INTEGER PRIMARY KEY auto_increment,
    user_id INTEGER REFERENCES user(id),
    recipe_id INTEGER REFERENCES recipe(id)
);

-- migrate:down

