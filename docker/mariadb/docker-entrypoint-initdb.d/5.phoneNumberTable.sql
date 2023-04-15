CREATE TABLE phoneNumber (
  id INT PRIMARY KEY,
  country INT,
  number VARCHAR(20),
  CONSTRAINT fk_phoneNumber_country FOREIGN KEY (country) REFERENCES country(id)
);

INSERT INTO phoneNumber (id, country, number) VALUES
  (1, 1, '555-1234'),
  (2, 2, '555-5678'),
  (3, 3, '555-9012'),
  (4, 1, '555-3456'),
  (5, 2, '555-7890'),
  (6, 3, '555-2345'),
  (7, 1, '555-6789'),
  (8, 2, '555-0123'),
  (9, 3, '555-4567'),
  (10, 1, '555-8901'),
  (11, 2, '555-2345'),
  (12, 3, '555-6789');
