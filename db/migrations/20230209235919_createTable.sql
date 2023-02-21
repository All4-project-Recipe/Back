-- migrate:up
CREATE TABLE user (
    id INTEGER PRIMARY KEY auto_increment,
    user_Id VARCHAR(20),
    password VARCHAR(100),
    name VARCHAR(200),
    email VARCHAR(80)
);

CREATE TABLE recipe (
    id INTEGER PRIMARY KEY auto_increment,
    title VARCHAR(100),
    writer VARCHAR(30) REFERENCES user(id),
    description VARCHAR(2000),
    amount varchar(50),
    spend_time varchar(50),
    level varchar(50),
    scrap_num INTEGER default 0,
    img_url VARCHAR(300),
    hit INTEGER default 0,
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
    description VARCHAR(1000)
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
    rating INTEGER,
    created_at timestamp default now()
);

CREATE TABLE scrap (
    id INTEGER PRIMARY KEY auto_increment,
    user_id INTEGER REFERENCES user(id),
    recipe_id INTEGER REFERENCES recipe(id)
);

-- migrate:down

