# postgres-test
This is a study project on [Postgres](http://www.postgresql.org/). [PostgreSQL](https://en.wikipedia.org/wiki/PostgreSQL) aka. [Postgres](https://github.com/postgres/postgres), is an [object-relational database management system (ORDBMS)](https://en.wikipedia.org/wiki/Object-relational_database) with an emphasis on extensibility and standards-compliance. 

If you want to follow the (free) online [postgres tutorial](http://www.postgresqltutorial.com/), 
the [dvdrental postgres sample database](http://www.postgresqltutorial.com/postgresql-sample-database/) has already
been loaded when you `launch.sh` the project, and contains 15 tables, 1 trigger, 7 views 8 functions, 1 domain and 13 sequences.

# What's new in postgres 9.5?
- [Youtube - What's new in PostgreSQL 9.5 - Magnus Hagander](https://www.youtube.com/watch?v=ubR3AN6kaGA)

# UPSERT(9.5)
- [Youtube - UPSERT Use Cases - Peter Geoghegan](https://www.youtube.com/watch?v=wgLf_ucdFbY)
- [Youtube - PostgreSQL 9.5's Upsert Feature Explained - Peter Geoghegan](https://www.youtube.com/watch?v=pbg97bkxbbY)
- [Craig Kerstiens - Upsert Lands in PostgreSQL 9.5 – a First Look](http://www.craigkerstiens.com/2015/05/08/upsert-lands-in-postgres-9.5/)

# Searching text
- [Youtube - Searching Text With PostgreSQL - Phil Vacca](https://www.youtube.com/watch?v=nw2W-E_8R5U)

# DVD rental data model
The 15 tables are:

Table | Description 
------|-----------
actor | stores actors data including first name and last name.
film | stores films data such as title, release year, length, rating, etc.
film_actor | stores the relationships between films and actors.
category | stores film’s categories data.
film_category | stores the relationships between films and categories.
store | contains the stores data including manager staff and address.
inventory | stores inventory data.
rental | stores rental data.
payment | stores customer’s payments.
staff | stores staff data.
customer | stores customers data.
address | stores address data for staff and customers
city | stores the city names.
country | stores the country names.

![dvdrental-er](https://github.com/dnvriend/postgres-test/blob/master/er-diagram/dvdrental-er-diagram.png)
