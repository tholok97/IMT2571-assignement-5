<?php

include_once("club.php");
include_once("skier.php");
include_once("city.php");
include_once("county.php");
include_once("season.php");
include_once("affiliatedWith.php");
include_once("skiedInTotal.php");

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
                    'dbname=assignement_5;charset=utf8mb4', 'root', '', 
                    array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
            } catch (PDOException $ex) {
                throw $ex;
            }
        }
    }

    public function addClub($club) {

        $stmt = $this->db->prepare("INSERT INTO club VALUES (:id, :name, :cityName)");
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

        $stmt = $this->db->prepare('INSERT INTO skier VALUES (:userName, :firstName, :lastName, :yearOfBirth)');
        $stmt->bindValue(':userName', $skier->userName);
        $stmt->bindValue(':firstName', $skier->lastName);
        $stmt->bindValue(':lastName', $skier->lastName);
        $stmt->bindValue(':yearOfBirth', $skier->yearOfBirth);

        // try to run the query
        try {
            $stmt->execute();
        } catch (PDOException $ex) {
            throw $ex;

        }
    }

    public function addCity($city) {

        $stmt = $this->db->prepare("INSERT INTO city VALUES (:cityName, :countyName)");
        $stmt->bindValue(':cityName', $city->name);
        $stmt->bindValue(':countyName', $city->countyName);

        // try to run the query
        try {
            $stmt->execute();
        } catch (PDOException $ex) {
            throw $ex;

        }
    }

    public function addCounty($county) {

        $stmt = $this->db->prepare("INSERT INTO county VALUES (:countyName)");
        $stmt->bindValue(':countyName', $county->name);

        // try to run the query
        try {
            $stmt->execute();
        } catch (PDOException $ex) {
            throw $ex;

        }
    }

    public function addSeason($season) {
        
        $stmt = $this->db->prepare("INSERT INTO season VALUES (:year)");
        $stmt->bindValue(':year', $season->year);

        // try to run the query
        try {
            $stmt->execute();
        } catch (PDOException $ex) {
            throw $ex;

        }
    }

    public function addAffiliatedWith($aff) {

        $stmt = $this->db->prepare("INSERT INTO affiliatedWith VALUES (:seasonYear, :clubID, :skierUserName)");
        $stmt->bindValue(':seasonYear', $aff->seasonYear);
        $stmt->bindValue(':clubID', $aff->clubID);
        $stmt->bindValue(':skierUserName', $aff->skierUserName);

        // try to run the query
        try {
            $stmt->execute();
        } catch (PDOException $ex) {
            throw $ex;

        }
    }

    public function addSkiedInTotal($tot) {

        $stmt = $this->db->prepare("INSERT INTO skiedInTotal VALUES (:skierUserName, :seasonYear, :totalDistance)");
        $stmt->bindValue(':skierUserName', $tot->skierUserName);
        $stmt->bindValue(':seasonYear', $tot->seasonYear);
        $stmt->bindValue(':totalDistance', $tot->totalDistance);

        // try to run the query
        try {
            $stmt->execute();
        } catch (PDOException $ex) {
            throw $ex;

        }
    }

    public function wipeClean() {
        $this->db->query('DELETE FROM affiliatedWith');
        $this->db->query('DELETE FROM skier');
        $this->db->query('DELETE FROM club');
        $this->db->query('DELETE FROM season');
        $this->db->query('DELETE FROM skiedInTotal');
        $this->db->query('DELETE FROM city');
        $this->db->query('DELETE FROM county');
    }
}

?>
