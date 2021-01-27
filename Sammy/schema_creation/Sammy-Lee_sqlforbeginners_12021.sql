-- Project Description

/*The purpose of the sqlforbeginners section of the OpenSource Meetup Group was to
create a Database Design of a movie theater reservation system similar to that of
Fandango.

Attached to this folder you will find an Entity Relationship Diagram that shows all the 
Entities and the relations between them under the name [movie_reservation_system_ER_diagram.jpg]

Also attached is an SQL file called [schema_creation.sql] which has all the SQL commands to 
recreate the actual database called pydango which tries to mimic the Fandango movie reservation
system.

There is also a MySQL dump file which can be used to simply restore the database with a couple of
commands from the MySQL shell called [pydango_backup.sql].  You can download it straight from 
GitHub into a directory.  From the same directory go into the MySQL shell (I'm using PowerShell).
Then do:

mysql> CREATE DATABASE pydango;
mysql> USE pydango;
mysql> source pydango_backup.sql

This should recreate the entire database for you.

[PYDANGO DATABASE]

The Pydango database has 8 regular Tables or Regular Entities, 2 Many-to-Many Junction Tables,
and 2 Views.

The Regular Entity Tables are:
1. Movie
2. Director
3. Actor
4. Category
5. Theater
6. Ticket
7. Payment
8. Account

The Many-to-Many Junction Tables are:
1. movie_actor (connects movie to actor table)
2. theater_movie (connects theater to movie table)
3. theater_schedule (to connect movie to theater schedule or showings) - a Weak Entity with 
a composite Primary key from (theater_id, movie_id, and time)


The 2 Views are:
1. schedule
2. ticket_information

The purpose of the Views are to show useful information without having to constantly
do JOINS.

There's also some interesting TRIGGERS that are included with some of the tables. */

-- The first TRIGGER is called before_actor_insert and it's purpose is to automatically 
-- calculate an actor's age from the birth_day

DELIMITER $$

CREATE TRIGGER before_actor_insert
BEFORE INSERT ON actor
FOR EACH ROW
BEGIN
    SET NEW.age = ROUND(DATEDIFF(CURDATE(), NEW.birth_day) / 365.25, 0);
END $$

DELIMITER ;

-- The second trigger is called befor_movie_insert and it's meant to set a Boolean flag
-- for movies that are currently still showing in the theaters

DELIMITER $$

CREATE TRIGGER before_movie_insert
BEFORE INSERT ON movie
FOR EACH ROW
BEGIN
    IF NOW() BETWEEN NEW.start_date AND NEW.end_date
    THEN SET NEW.active = true;
    ELSE SET NEW.active = false;

    END IF;
END $$

DELIMITER ;

-- This allows us to filer the movie Table:

SELECT * FROM movie
WHERE active = true;

-- The third TRIGGER is called before_ticket_insert which automatically calculates
-- the total ticket price from the quantity column

DELIMITER $$

CREATE TRIGGER before_ticket_insert
BEFORE INSERT ON ticket
FOR EACH ROW
BEGIN
    SET NEW.total = NEW.quantity * 9.99;
END $$

DELIMITER ;

-- And the fourth TRIGGER is called after_ticket_insert
-- and it's function is to insert values into the payemnt table i.e. credit_card number

DELIMITER $$

CREATE TRIGGER after_ticket_insert
AFTER INSERT ON ticket
FOR EACH ROW
BEGIN
  INSERT INTO payment
  SET payment_id = NEW.payment_id,
      credit_card = (SELECT credit_card FROM account where account_id = NEW.account_id),
      paid = true;
END $$

DELIMITER ;

-- An example of a One-to-Many relation is between category and movie.
-- So you can do a query like:

SELECT title, category_name
FROM movie
INNER JOIN movie_category
WHERE category_name = 'Drama';

-- Another relevant query is to figure out which theaters are nearby

SELECT * FROM theater
WHERE zip_code = 89128;

-- Note: This is a rudimentary version of the actual database, as the data requirements for Fandango
-- probably 10x if not 100x what is described here.

-- Nevertheless, I've learned a LOT from doing this, and have discovered that trying to design 
-- a database system from scratch is pretty involving mental-exercise.

-- Thanks to Mo and others who started Open Source Programming group on Meetup.
-- And let's hope the theater industry can survive and come back!

