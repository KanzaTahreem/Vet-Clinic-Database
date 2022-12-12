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


-- This will add 3.594.280 visits considering you have 10 animals, 4 vets, and it will use around ~87.000 timestamps (~4min approx.)
INSERT INTO visits (animal_id, vet_id, date_of_visit) SELECT * FROM (SELECT id FROM animals) animal_ids, (SELECT id FROM vets) vets_ids, generate_series('1980-01-01'::timestamp, '2021-01-01', '4 hours') visit_timestamp;

-- This will add 2.500.000 owners with full_name = 'Owner <X>' and email = 'owner_<X>@email.com' (~2min approx.)
insert into owners (full_name, email) select 'Owner ' || generate_series(1,2500000), 'owner_' || generate_series(1,2500000) || '@mail.com';