<?php

// info about one city. used as struct
class City {

    public $name;
    public $county;

    public function __construct($name, $county) {
        $this->name = $name;
        $this->county = $county;
    }

    public function print() {
        echo "CITY (name: $this->name, county: $this->county)\n";
    }
}

?>
