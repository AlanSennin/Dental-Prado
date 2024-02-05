CREATE DATABASE IF NOT EXISTS pradodentaldb;

USE pradodentaldb;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(45) NOT NULL UNIQUE,
    password VARCHAR(128) NOT NULL,
    name VARCHAR(45),
    role ENUM('admin', 'client') NOT NULL
);

INSERT INTO users (username, password, name, role) VALUES ('admin', 'admin', 'Administrador', 'admin');