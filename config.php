<?php
// ***protseduuriline***
// sinu andmed
$db_server = 'localhost';
$db_andmebaas = 'cr';
$db_kasutaja = 'asso';
$db_salasona = 'Parool';

// ühendus andmebaasiga
$yhendus = mysqli_connect($db_server, $db_kasutaja, $db_salasona, $db_andmebaas);

// ühenduse kontroll
if (!$yhendus) {
    die('Ei saa ühendust andmebaasiga');
}

?>