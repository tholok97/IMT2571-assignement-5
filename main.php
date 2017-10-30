<?php

include_once("database.php");

$db = new Database();
$db->wipeClean();

$db->addCounty('Oppland');
$db->addCity('Gjovik', 'Oppland');
//$db->addClub(1, 'Superklubben', 'Gjøvik');

echo "success!\n"


?>
