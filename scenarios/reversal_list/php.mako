%if mode == 'definition':
Balanced\Marketplace::mine()->reversals

% else:
<?php

require(__DIR__ . '/vendor/autoload.php');

Httpful\Bootstrap::init();
RESTful\Bootstrap::init();
Balanced\Bootstrap::init();

Balanced\Settings::$api_key = "ak-test-Hznf9GhTb2Xkj7fGwVD6lZSMH5F1eTRl";

$marketplace = Balanced\Marketplace::mine();
$marketplace->reversals->query()->all();

?>
%endif