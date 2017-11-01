<?php

// info about one club. used as struct
class AffiliatedWith {

    public $seasonYear;
    public $clubID;
    public $skierUserName;    

    public function __construct($seasonYear, $clubID, $skierUserName) {
        $this->seasonYear = $seasonYear;
        $this->clubID = $clubID;
        $this->skierUserName = $skierUserName;  
    }

    public function print() {
        echo "affiliatedWith (seasonYear: $this->seasonYear, clubID: $this->clubID, skierUserName: $this->skierUserName)\n";
    }
}

?>
