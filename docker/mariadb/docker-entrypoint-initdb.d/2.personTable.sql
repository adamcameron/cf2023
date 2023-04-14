CREATE TABLE person (
  id INT PRIMARY KEY,
  firstName VARCHAR(50),
  lastName VARCHAR(50),
  contactPerson INT
);

INSERT INTO person (id, firstName, lastName, contactPerson) VALUES
  (1, 'John', 'Smith', 2),
  (2, 'Lina', 'Kim', 3),
  (3, 'Kofi', 'Annor', 1),
  (4, 'Amina', 'Kamara', 3),
  (5, 'Taro', 'Tanaka', 1),
  (6, 'Maria', 'Garcia', 2),
  (7, 'Jing', 'Li', 4),
  (8, 'Saeed', 'Al-Mahdi', 5),
  (9, 'Eva', 'Novak', 6),
  (10, 'Rajesh', 'Patel', 7),
  (11, 'Mohamed', 'Ali', 5),
  (12, 'Chantal', 'Nguyen', 9);

ALTER TABLE person
ADD INDEX fk_person_contactPerson_idx (contactPerson ASC) VISIBLE;
;

ALTER TABLE person
ADD CONSTRAINT fk_person_contactPerson
  FOREIGN KEY (contactPerson)
  REFERENCES person (id)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
