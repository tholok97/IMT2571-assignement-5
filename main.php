<?php

include_once("database.php");


$db = new Database();
$db->wipeClean();

$db->addCounty(new County('Oppland'));
$db->addCity(new City('Gjovik', 'Oppland'));
//$db->addClub(1, 'Superklubben', 'Gjøvik');

echo "success!\n"


?>
