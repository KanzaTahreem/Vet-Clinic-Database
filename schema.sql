/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
  id SERIAL PRIMARY KEY,
  name VARCHAR(250),
  date_of_birth DATE,
  escape_attempts INT,
  neutered BOOLEAN,
  weight_kg DECIMAL
);

ALTER TABLE animals ADD species VARCHAR(250);

CREATE TABLE owners (
  id SERIAL PRIMARY KEY,
  full_name VARCHAR(250),
  age INT
);

CREATE TABLE species (
  id SERIAL PRIMARY KEY,
  name VARCHAR(250)
);

ALTER TABLE animals DROP COLUMN species;
ALTER TABLE animals ADD species_id INT;
ALTER TABLE animals ADD FOREIGN KEY (species_id) REFERENCES species(id);
ALTER TABLE animals ADD owner_id INT;
ALTER TABLE animals ADD FOREIGN KEY (owner_id) REFERENCES owners(id);

CREATE TABLE vets (
  id SERIAL PRIMARY KEY,
  name VARCHAR(250),
  age INT,
  date_of_graduation DATE
);

CREATE TABLE specializations (
  vets_id INT REFERENCES vets(id),
  species_id INT REFERENCES species(id)
);

CREATE TABLE visits (
  vets_id INT REFERENCES vets(id),
  animals_id INT REFERENCES animals(id),
  date_of_visit DATE
);

ALTER TABLE owners ADD COLUMN email VARCHAR(120);

ALTER TABLE visits
RENAME COLUMN animals_id TO animal_id;

ALTER TABLE visits
RENAME COLUMN vets_id TO vet_id;

CREATE INDEX ON visits (animal_id);

CREATE INDEX ON visits (vet_id);

CREATE INDEX ON owners (email);