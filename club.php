<?php

// info about one club. used as struct
class Club {

    public $id;
    public $name;
    public $cityName;    
    public $countyName;

    public function __construct($id, $name, $cityName, $countyName) {
        $this->id = $id;
        $this->name = $name;
        $this->cityName = $cityName;  
        $this->countyName = $countyName;
    }

    public function print() {
        echo "CLUB (id: $this->id, name: $this->name, cityName: $this->cityName, countyName: $this->countyName)\n";
    }
}

?>
