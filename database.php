<?php

include_once("club.php");
include_once("skier.php");

// wrapper around mysql database
class Database {

    private $db = null;

    // prepare database. if connection couldn't be made: throw
    public function __construct($db = null) {
        if ($db) {
            $this->db = $db;
        } else {
            try {
                $this->db = new PDO('mysql:host=localhost;'+
                    'dbname=assignement_5;charset=utf8mb4', 'root', '', 
                    array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
            } catch (PDOException $ex) {
                throw $ex;
            }
        }
    }

    public function addClub($club) {

    }

    public function addSkier($skier) {

    }
}

?>
