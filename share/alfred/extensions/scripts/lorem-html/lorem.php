<?php

$q=$argv[1];

$url = "loripsum.net/api/$q/";
$url = str_replace('//','/', $url);
$url = "http://$url";

$c = curl_init();
curl_setopt($c, CURLOPT_URL, $url);
curl_setopt($c, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($c, CURLOPT_CONNECTTIMEOUT, 5);
$buffer = curl_exec($c);
curl_close ($c);

echo trim($buffer);
