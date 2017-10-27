<?php

// info about one skier. used as struct
class Skier {

    public $userName;
    public $firstName;
    public $lastName;    
    public $yearOfBirth;

    public function __construct($userName, $firstName, $lastName, $yearOfBirth) {
        $this->userName = $userName;
        $this->firstName = $firstName;
        $this->lastName = $lastName;  
        $this->yearOfBirth = $yearOfBirth;
    }

    public function print() {
        echo "SKIER (userName: $this->userName, firstName: $this->firstName, lastName: $this->lastName, yearOfBirth: $this->yearOfBirth)\n";
    }
}

?>
