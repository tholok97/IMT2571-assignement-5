<?php

include_once("database.php");

$club = new Club(3, "superklubb", "gjovik");

$db = new Database();
$db->db->query('DELETE FROM club');
$db->addClub($club);

echo "success!\n"


?>
