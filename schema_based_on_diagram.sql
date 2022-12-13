CREATE TABLE patients (
  id SERIAL PRIMARY KEY,
  name VARCHAR(250),
  date_of_birth DATE,
);

CREATE TABLE invoices (
  id SERIAL PRIMARY KEY,
  total_amount DECIMAL,
  generated_at TIMESTAMP,
  payed_at TIMESTAMP,
  medical_history_id INT,
);

CREATE TABLE medical_histories (
  id SERIAL PRIMARY KEY,
  admitted_at TIMESTAMP,
  patient_id INT,
  status VARCHAR(250),
);

CREATE TABLE treatments (
  id SERIAL PRIMARY KEY,
  type VARCHAR(250),
  name VARCHAR(250)
);

CREATE TABLE invoice_items (
  id SERIAL PRIMARY KEY,
  unit_price DECIMAL,
  quantity INT,
  total_price DECIMAL,
  invoice_id INT,
  treatment_id INT
);
