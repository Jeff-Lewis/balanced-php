<?php

require(__DIR__ . '/vendor/autoload.php');

Httpful\Bootstrap::init();
RESTful\Bootstrap::init();
Balanced\Bootstrap::init();

Balanced\Settings::$api_key = "ak-test-2eKlj1ZDfAcZSARMf3NMhBHywDej0avSY";

$card = Balanced\Marketplace::mine()->cards->create(array(
    "cvv" => "123",
    "expiration_month" => "12",
    "expiration_year" => "2020",
    "number" => "5105105105105100",
));

?>