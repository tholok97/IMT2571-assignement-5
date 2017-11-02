<?php

// info about one County. used as struct
class County {

    public $name;

    public function __construct($name) {
        $this->name = $name;
    }

    public function print() {
        echo "COUNTY (name: $this->name)\n";
    }
}

?>
