<?php

include_once("database.php");
include_once("information.php");

// prepare db
$db = new Database();
$db->wipeClean();

// prepare doc
$doc = new DOMDocument();
if (!$doc->load('SkierLogs.xml')) {
    p("COULDN'T LOAD XML");
} else {

    // do job
    $doc->normalize();
    $info = parse($doc); 
    $info->unify();
    $info->print();
    putInto($info, $db);
    p("success!");
}

// puts info from $info into $db with debug output
function putInto($info, $db) {
    
    p("adding counties...");
    foreach ($info->counties as $county) {
        $db->addCounty($county);
    }
    p("adding cities...");
    foreach ($info->cities as $city) {
        $db->addCity($city);
    }
    p("adding totals...");
    foreach ($info->totals as $total) {
        $db->addSkiedInTotal($total);
    }
    p("adding seasons...");
    foreach ($info->seasons as $season) {
        $db->addSeason($season);
    }
    p("adding clubs...");
    foreach ($info->clubs as $club) {
        $db->addClub($club);
    }
    p("adding skiers...");
    foreach ($info->skiers as $skier) {
        $db->addSkier($skier);
    }
    p("adding affiliations...");
    foreach ($info->affiliations as $aff) {
        $db->addAffiliatedWith($aff);
    }
}

// parse $doc into Information object
function parse($doc) {

    $x = new DOMXpath($doc);
    $info = new Information();

    // find all cities, counties and clubs
    $clubs = $x->query("//SkierLogs/Clubs/Club");
    foreach ($clubs as $club) {
        $id = $club->getAttribute('id'); 
        $city = $club->getElementsByTagName('City')->item(0)->textContent;
        $county = $club->getElementsByTagName('County')->item(0)->textContent;
        $name = $club->getElementsByTagName('Name')->item(0)->textContent;
        array_push($info->counties, new County($county));
        array_push($info->cities, new City($city, $county));
        array_push($info->clubs, new Club($id, $name, $city));
    }

    // find all "skiedInTotal", seasons and affiliatedWith
    $seasons = $x->query("//SkierLogs/Season"); 
    foreach ($seasons as $season) {
        $year = $season->getAttribute('fallYear');
        array_push($info->seasons, new Season($year));
        $skiers = $x->query("//SkierLogs/Season[@fallYear = $year]/Skiers/Skier");
        foreach ($skiers as $skier) {
            $userName = $skier->getAttribute('userName');
            $totalDistance = 0;
            $distances = $x->query("//SkierLogs/Season[@fallYear = $year]/Skiers/Skier[@userName = '$userName']/Log/Entry/Distance");
            foreach ($distances as $distance) {
                $totalDistance += (int)$distance->textContent;
            }
            array_push($info->totals, new SkiedInTotal($userName, $year, $totalDistance));
        }
        $skierss = $x->query("//SkierLogs/Season[@fallYear = $year]/Skiers");
        foreach ($skierss as $skiers) {
            $clubID = $skiers->getAttribute('clubId');
            if ($clubID != "") {
                $skiers = $x->query("//SkierLogs/Season[@fallYear = $year]/Skiers[@clubId = '$clubID']/Skier");
                foreach($skiers as $skier) {
                    $userName = $skier->getAttribute('userName');
                    array_push($info->affiliations, new AffiliatedWith($year, $clubID, $userName));
                }
            }
        }
    }

    // find all skiers
    $skiers = $x->query("//SkierLogs/Skiers/Skier");
    foreach ($skiers as $skier) {
        $userName = $skier->getAttribute('userName');
        $firstName = $skier->getElementsByTagName('FirstName')->item(0)->textContent;
        $lastName = $skier->getElementsByTagName('LastName')->item(0)->textContent;
        $yearOfBirth = $skier->getElementsByTagName('YearOfBirth')->item(0)->textContent;

        array_push($info->skiers, new Skier($userName, $firstName, $lastName, $yearOfBirth));
    }
    

    return $info;
}

// printline (for convenience)
function p($string) {
    echo $string . "\n";
}

// printline with tab (for convenience)
function pp($string) {
    echo "\t";
    p($string);
}

?>
