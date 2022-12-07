![](https://img.shields.io/badge/Microverse-blueviolet)
<a name="readme-top"></a>

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Screenshots](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Setup](#setup)
  - [Creating a database](#create-a-database)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 Vet Clinic Database <a name="about-project"></a>

_**Vet Clinic Database**_ a relational database to create the initial data structure for a vet clinic.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- Create Database animals table to store animals' information
- Insert data to the table and perform query to it
- Update animals table by altering the rows.
- Query multiple tables.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO -->

## 🚀 Screenshots <a name="screenshots"></a>

[Loading . . .]()

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

### Prerequisites

In order to run this project you need:

- [PostgreSQL server](https://www.postgresql.org/) installed and running
- [psql](https://www.postgresql.org/docs/current/app-psql.html) installed

### Setup

Clone this repository to your desired folder:

```
  git clone git@github.com:KanzaTahreem/Vet-Clinic-Database.git
  cd Vet-Clinic-Database
```

### Creating a database

1. Connect to your PostgreSQL server with `psql`

```
> psql
postgres=#
```

2. Create the database `vet_clinic`

```
postgres=# CREATE DATABASE vet_clinic;
CREATE DATABASE
```

3. Connect to your database `vet_clinic`. Inside your current session do

```
postgres=# \c vet_clininc
You are now connected to database "vet_clinic" as user "postgres".
vet_clinic=#
```

That's it! Congratulations, you have created your database and connected to it. Next, we will add a table. Learn more at [PostgreSQL: Create a database](https://www.postgresql.org/docs/current/sql-createdatabase.html)

- Use [schema.sql](./schema.sql) to create all tables.
- Use [data.sql](./data.sql) to populate tables with sample data.
- Check [queries.sql](./queries.sql) for examples of queries that can be run on a newly created database.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Author <a name="authors"></a>

- GitHub: [@KanzaTahreem](https://github.com/KanzaTahreem)
- Twitter: [@kanza_tahreem](https://twitter.com/kanza_tahreem)
- LinkedIn: [Kanza Tahreem](https://www.linkedin.com/in/kanza-tahreem/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- Add _**join table**_ for visits.
- Database performance audit.
- Add database schema diagram.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/KanzaTahreem/Vet-Clinic-database/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project and want to support me make cooler projects Give this project a Star.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
