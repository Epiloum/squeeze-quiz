CREATE TABLE users (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(32) NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    `deleted_at` TIMESTAMP,
    PRIMARY KEY (id)
);

CREATE TABLE bundles (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(32) NOT NULL,
    `description` VARCHAR(256),
    PRIMARY KEY (id)
);

CREATE TABLE bundle_choices (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INT UNSIGNED NOT NULL,
    `bundle_id` INT UNSIGNED NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (bundle_id) REFERENCES bundles(id)
);

CREATE TABLE questions (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `bundle_id` INT UNSIGNED NOT NULL,
    `question` VARCHAR(256) NOT NULL,
    `answer` VARCHAR(256) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (bundle_id) REFERENCES bundles(id)
);

CREATE TABLE question_favorites (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `user_id` INT UNSIGNED NOT NULL,
    `question_id` INT UNSIGNED NOT NULL,
    `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    `deleted_at` TIMESTAMP,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (question_id) REFERENCES questions(id)
);