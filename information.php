<?php

// Information contains the information in arrays
class Information {
    public $skiers;
    public $clubs;
    public $seasons;
    public $cities;
    public $counties;
    public $affiliations;
    public $totals;

    public function __construct() {
        $this->skiers = array();  
        $this->clubs = array();  
        $this->seasons = array();  
        $this->cities = array();  
        $this->counties = array();  
        $this->affiliations = array();  
        $this->totals = array();  
    }

    public function print() {
        echo "\n\nINFORMATION: \n";
        foreach ($this->skiers as $v) {
            $v->print();
        }
        foreach ($this->clubs as $v) {
            $v->print();
        }
        foreach ($this->seasons as $v) {
            $v->print();
        }
        foreach ($this->cities as $v) {
            $v->print();
        }
        foreach ($this->counties as $v) {
            $v->print();
        }
        foreach ($this->affiliations as $v) {
            $v->print();
        }
        foreach ($this->totals as $v) {
            $v->print();
        }
        echo "\n";
    }

    public function unify() {
        $this->skiers = array_unique($this->skiers, SORT_REGULAR);
        $this->clubs = array_unique($this->clubs, SORT_REGULAR);
        $this->seasons = array_unique($this->seasons, SORT_REGULAR);
        $this->cities = array_unique($this->cities, SORT_REGULAR);
        $this->counties = array_unique($this->counties, SORT_REGULAR);
        $this->affiliations = array_unique($this->affiliations, SORT_REGULAR);
        $this->totals = array_unique($this->totals, SORT_REGULAR);
    }
}

?>
