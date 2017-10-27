<?php

// info about one club. used as struct
class Club {

    public $id;
    public $name;
    public $cityName;    

    public function __construct($id, $name, $cityName) {
        $this->id = $id;
        $this->name = $name;
        $this->cityName = $cityName;  
    }

    public function print() {
        echo "CLUB (id: $this->id, name: $this->name, cityName: " .
            "$this->cityName)\n";
    }
}

?>
