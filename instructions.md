# Using DOM and PDO to Import XML Data to MySQL

In this part, you will get experience in using the DOM API to access XML data and in converting data
from XML to a relational database.

## Task 1 – Design the Database

Develop a conceptual (UML) model for the database. The database should store information about the skiers (unique user name, first name, last name, year of birth), about skiing clubs (unique id, club name, and city and county where the club is located). The database should also store information about what club (if any) the skier was representing a given season. It should be possible for join, move to or resign from a club between seasons – i.e., club affiliation may vary from one season to the other.

The database should also store the total distance that each skier logged each season.

Include the UML model in the report.

## Task 2 – Create the Database in MySQL

Create tables, primary keys and foreign keys in MySQL for the database. Export the MySQL schema to an SQL file that you can import in the report and that you should store in your git repo too.

## Task 3 – Importing XML Data to the Database

Develop a PHP script that opens the SkierLogs.xml file as a DOM Document. Use the DOM API to extract data about clubs and skiers from the XML file and use PDO to add records to the database for the clubs and the skiers. The script also needs to store what club (if any) the skier was representing in the various seasons. Finally, the script needs to sum up the logged distances for each skier for each season and store the season total for that skier to the database
