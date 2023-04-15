CREATE TABLE address (
  id INT PRIMARY KEY,
  street VARCHAR(255),
  country INT,
  postCode VARCHAR(10),
  CONSTRAINT fk_address_country FOREIGN KEY (country) REFERENCES country(id)
);

INSERT INTO address (id, street, country, postCode) VALUES
  (1, '123 Main St, Apt 4', 1, '12345'),
  (2, '456 Elm St', 2, '67890'),
  (3, '789 Oak St', 3, NULL),
  (4, '10 Park Ave', 2, '67891'),
  (5, '555 Fifth Ave, Suite 22', 1, NULL),
  (6, '999 Maple St', 1, '12346'),
  (7, '777 Broad St', 3, NULL),
  (8, '123 Elm St, Suite 5', 2, NULL),
  (9, '456 Main St', 1, '12347'),
  (10, '1000 Oak St', 3, NULL),
  (11, '1111 Broad St', 2, NULL),
  (12, '333 Maple St, Apt 7', 1, NULL);
