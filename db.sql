CREATE TABLE customer (
  id VARCHAR(10) NOT NULL,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB;

ALTER TABLE customer
ADD COLUMN email VARCHAR(100),
ADD COLUMN balance INTEGER DEFAULT 0,
ADD COLUMN rating DOUBLE DEFAULT 0.0,
ADD COLUMN created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN birth_date DATE,
ADD COLUMN married BOOLEAN DEFAULT false;

ALTER TABLE customer MODIFY COLUMN created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

INSERT INTO customer (id, name, email, balance, rating, created_at, birth_date, married) VALUES
('1', 'Rafael', 'rafa@gmail.com', 1000, 4.5, '2020-01-01', '1990-01-01', true),
('2', 'Kevin', 'kevin@gmail.com', 1000, 4.5, '2020-01-01', '1990-01-01', true),
('3', "Devin", 'devin@gmail.com', 1000, 4.5, '2020-01-01', '1990-01-01', true),
('4', 'John', 'john@gmail.com', 1000, 4.5, '2020-01-01', '1990-01-01', true),
('5', 'Mary', 'mary@gmail.com', 1000, 4.5, '2020-01-01', '1990-01-01', true),
('6', 'Peter', 'peter@gmail.com', 1000, 4.5, '2020-01-01', '1990-01-01', true),
('7', 'Paul', 'paul@gmail.com', 1000, 4.5, '2020-01-01', '1990-01-01', true),
('8', 'Mike', 'mike@gmail.com', 1000, 4.5, '2020-01-01', '1990-01-01', true),
('9', 'Steve', 'steve@gmail.com', 1000, 4.5, '2020-01-01', '1990-01-01', true),
('10', 'Tom', 'tom@gmail.com', 1000, 4.5, '2020-01-01', '1990-01-01', true),
('11', 'James', 'james@gmail.com', 1000, 4.5, '2020-01-01', '1990-01-01', true);


CREATE TABLE `user` (
  id INT NOT NULL AUTO_INCREMENT,
  username VARCHAR(100) NOT NULL,
  password VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB;

INSERT INTO user (username, password) VALUES
('admin', 'admin'),
('user', 'user');

CREATE TABLE `comments` (
  id INT NOT NULL AUTO_INCREMENT,
  email VARCHAR(100) NOT NULL,
  comment TEXT,
  PRIMARY KEY (id)
) ENGINE=InnoDB;