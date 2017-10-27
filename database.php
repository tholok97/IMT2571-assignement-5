<?php

include_once("club.php");
include_once("skier.php");

// wrapper around mysql database
class Database {

    public $db = null;

    // prepare database. if connection couldn't be made: throw
    public function __construct($db = null) {
        if ($db) {
            $this->db = $db;
        } else {
            try {
                $this->db = new PDO('mysql:host=localhost;' . 
                    'dbname=assignement_5;charset=utf8mb4', 'root', '', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
            } catch (PDOException $ex) {
                throw $ex;
            }
        }
    }

    public function addClub($club) {

        $stmt = $this->db->prepare("INSERT INTO club VALUES (:id, :name, " .
            ":cityName)");
        $stmt->bindValue(':id', $club->id);
        $stmt->bindValue(':name', $club->name);
        $stmt->bindValue(':cityName', $club->cityName);

        // try to run the query
        try {
            $stmt->execute();
        } catch (PDOException $ex) {
            throw $ex;
        }
    }

    public function addSkier($skier) {

        $stmt = $this->db->prepare('INSERT INTO skier VALUES (:userName, ' .
           ':firstName, :lastName, :yearOfBirth)');
        $stmt->bindValue(':userName', $this->userName);
        $stmt->bindValue(':firstName', $this->lastName);
        $stmt->bindValue(':lastName', $this->lastName);
        $stmt->bindValue(':yearOfBirth', $this->yearOfBirth);

        // try to run the query
        try {
            $stmt->execute();
        } catch (PDOException $ex) {
            throw $ex;

        }
    }

    public function addCity($cityName, $countyName) {

        $stmt = $this->db->prepare("INSERT INTO city VALUES (:cityName, ' .
            ':countyName)");
        $stmt->bindValue(':cityName', $cityName);
        $stmt->bindValue(':countyName', $countyName);

        // try to run the query
        try {
            $stmt->execute();
        } catch (PDOException $ex) {
            throw $ex;

        }
    }

    public function addCounty($countyName) {

        $stmt = $this->db->prepare("INSERT INTO county VALUES (:countyName)");
        $stmt->bindValue(':countyName', $countyName);

        // try to run the query
        try {
            $stmt->execute();
        } catch (PDOException $ex) {
            throw $ex;

        }
    }
}

?>
