<?php

// info about one club. used as struct
class Season {

    public $year;

    public function __construct($year) {
        $this->year = $year;
    }

    public function print() {
        echo "SEASON (year: $this->year)\n";
    }
}

?>
