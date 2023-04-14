CREATE TABLE personAddress (
  personId INT,
  addressId INT,
  PRIMARY KEY (personId, addressId),
  CONSTRAINT fk_personAddress_person FOREIGN KEY (personId) REFERENCES person(id),
  CONSTRAINT fk_personAddress_address FOREIGN KEY (addressId) REFERENCES address(id)
);

INSERT INTO personAddress (personId, addressId) VALUES
  (1, 1),
  (2, 2),
  (3, 1),
  (4, 3),
  (5, 2),
  (5, 3),
  (6, 5),
  (7, 1),
  (8, 6),
  (9, 3),
  (10, 5),
  (11, 6),
  (12, 5);

CREATE TABLE personPhoneNumber (
  personId INT,
  phoneNumberId INT,
  PRIMARY KEY (personId, phoneNumberId),
  CONSTRAINT fk_personPhoneNumber_person FOREIGN KEY (personId) REFERENCES person(id),
  CONSTRAINT fk_personPhoneNumber_phoneNumber FOREIGN KEY (phoneNumberId) REFERENCES phoneNumber(id)
);

INSERT INTO personPhoneNumber (personId, phoneNumberId) VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (5, 5),
  (5, 6),
  (6, 4),
  (8, 1),
  (9, 2),
  (11, 3),
  (12, 6);
