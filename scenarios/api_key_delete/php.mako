%if mode == 'definition':
Balanced\APIKey->unstore();

% else:
<?php

require(__DIR__ . '/vendor/autoload.php');

Httpful\Bootstrap::init();
RESTful\Bootstrap::init();
Balanced\Bootstrap::init();

Balanced\Settings::$api_key = "ak-test-22IOkhevjZlmRP2do6CZixkkDshTiOjTV";

$api_key = Balanced\APIKey::get("/api_keys/AK3DgZwSCD2ggxGSw1bsiyDX");
$api_key->unstore();

?>
%endif