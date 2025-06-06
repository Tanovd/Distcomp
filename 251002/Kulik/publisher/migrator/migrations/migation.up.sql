CREATE TABLE creator (
    id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    password VARCHAR(128) NOT NULL,
    firstname VARCHAR(64) NOT NULL
);

CREATE TABLE story (
    id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    creator_id BIGINT REFERENCES creator(id),
    title VARCHAR(64) NOT NULL,
    content TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE mark (
    id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    story_id BIGINT REFERENCES story(id),
    name TEXT NOT NULL
);

CREATE TABLE note (
    id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    story_id BIGINT REFERENCES story(id),
    content TEXT NOT NULL
);