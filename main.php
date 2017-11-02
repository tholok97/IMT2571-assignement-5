<?php

include_once("utility.php");

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

?>
