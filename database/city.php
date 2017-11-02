<?php

// info about one city. used as struct
class City {

    public $name;
    public $countyName;

    public function __construct($name, $countyName) {
        $this->name = $name;
        $this->countyName = $countyName;
    }

    public function print() {
        echo "CITY (name: $this->name, countyName: $this->countyName)\n";
    }
}

?>
