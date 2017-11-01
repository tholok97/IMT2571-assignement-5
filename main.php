<?php

include_once("database.php");


$db = new Database();
$db->wipeClean();

/* // test
$db->addCounty(new County('Oppland'));
$db->addCity(new City('Gjøvik', 'Oppland'));
$db->addClub(new Club(1, 'Superklubben', 'Gjøvik'));
$db->addSkier(new Skier('tholok', 'thomas', 'løkkeborg', 1997));
$db->addSeason(new Season(1997));
$db->addAffiliatedWith(new AffiliatedWith(1997, 1, 'tholok'));
$db->addSkiedInTotal(new SkiedInTotal('tholok', 1997, 923));
 */


echo "success!\n"


?>
