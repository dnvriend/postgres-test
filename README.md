# postgres-test
This is a study project on [Postgres](http://www.postgresql.org/). [PostgreSQL](https://en.wikipedia.org/wiki/PostgreSQL) aka. [Postgres](https://github.com/postgres/postgres), is an [object-relational database management system (ORDBMS)](https://en.wikipedia.org/wiki/Object-relational_database) with an emphasis on extensibility and standards-compliance. 

If you want to follow the (free) online [postgres tutorial](http://www.postgresqltutorial.com/), 
the [dvdrental postgres sample database](http://www.postgresqltutorial.com/postgresql-sample-database/) has already
been loaded when you `launch.sh` the project, and contains 15 tables, 1 trigger, 7 views 8 functions, 1 domain and 13 sequences.

# Schema
A [schema](http://www.tutorialspoint.com/postgresql/postgresql_schema.htm) is a named collection of tables. A schema can also contain views, 
indexes, sequences, data types, operators, and functions. Schemas are analogous to directories at the operating system level, except that schemas 
cannot be nested. PostgreSQL statement `CREATE SCHEMA` creates a schema.

## Syntax
The basic syntax `CREATE SCHEMA` is as follows:

```sql
CREATE SCHEMA name;
```

Where `name` is the name of the schema.

## Syntax to Create table in Schema
The basic syntax to `CREATE TABLE` in schema is as follows:

```sql
CREATE TABLE myschema.mytable (
...
);
```

## Example
Let us see an example for creating a schema. Connect to the database `postgres` by using the `plsql.cli.sh` or `launch.sh` script
and create a schema `myschema` as follows:

```bash
postgres=# create schema myschema;
CREATE SCHEMA
postgres=#
```
The message `CREATE SCHEMA` signifies that the schema is created successfully.

Now, let us create a table in the above schema as follows:

```bash
postgres=# create table myschema.company(
   ID   INT              NOT NULL,
   NAME VARCHAR (20)     NOT NULL,
   AGE  INT              NOT NULL,
   ADDRESS  CHAR (25) ,
   SALARY   DECIMAL (18, 2),
   PRIMARY KEY (ID)
   );
```   

This will create an empty table. You can verify the table created with the command below:

```bash
postgres=# select * from myschema.company;
 id | name | age | address | salary
----+------+-----+---------+--------
(0 rows)
```

which is equivalent to:

```bash
postgres=# select * from "myschema"."company";
 id | name | age | address | salary
----+------+-----+---------+--------
(0 rows)
```

### Syntax to Drop schema
To drop a schema if it's empty (all objects in it have been dropped), then use:

```sql
DROP SCHEMA myschema;
```

To drop a schema including all contained objects, use:

```sql
DROP SCHEMA myschema CASCADE;
```

When we drop the schema, the following happens.

```bash
postgres=# drop schema myschema cascade;
NOTICE:  drop cascades to table myschema.company
DROP SCHEMA

postgres=# select * from myschema.company;
ERROR:  relation "myschema.company" does not exist
LINE 1: select * from myschema.company;
```

##  Advantages of using a Schema
* It allows many users to use one database without interfering with each other.
* It organizes database objects into logical groups to make them more manageable.
* Third-party applications can be put into separate schemas so they do not collide with the names of other objects.

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
