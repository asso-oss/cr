<h1>Admin</h1>

<?php

    include("config.php")

    $paring = "SELECT * FROM cars LIMIT 8";
    $valjund = mysqli_query($yhendus, $paring);

    while($rida = mysqli_fetch_row($valjund)){
    var_dump($rida[1],$rida[2]);
}