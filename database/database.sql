CREATE DATABASE IF NOT EXISTS patientsdatabase;

USE patientsdatabase;

DROP TABLE IF EXISTS patientsdatabase;

CREATE TABLE patients(
    id          BIGINT NOT NULL AUTO_INCREMENT,
    first_name  VARCHAR(255) DEFAULT NULL,
    email       VARCHAR(255) DEFAULT NULL,
    phone       VARCHAR(255) DEFAULT NULL,
    addres      VARCHAR(255) DEFAULT NULL,
    diagnosis   VARCHAR(255) DEFAULT NULL,
    image_url   VARCHAR(255) DEFAULT NULL,
    created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (id),
    CONSTRAINT UQ_Patients_Email UNIQUE (email)
);