<?php

// info about one club. used as struct
class SkiedInTotal {

    public $skierUserName;
    public $seasonYear;
    public $totalDistance;    

    public function __construct($skierUserName, $seasonYear, $totalDistance) {
        $this->skierUserName = $skierUserName;
        $this->seasonYear = $seasonYear;
        $this->totalDistance = $totalDistance;  
    }

    public function print() {
        echo "skiedInTotal (skierUserName: $this->skierUserName, seasonYear: $this->seasonYear, totalDistance: $this->totalDistance)\n";
    }
}

?>
