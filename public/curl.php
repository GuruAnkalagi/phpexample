<?php

$data_string = '{
				"utilityref":"AAB234CD",
				"msisdn" : "919743204088",
				"amount" : "40",
				"transid" : "573971374",
				"reference" : "5878378173",
				"operator" : "SELCOMECARD"
			}';

$ch = curl_init('http://34.217.126.49:2000/validatepayment');
curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
curl_setopt($ch, CURLOPT_POSTFIELDS, $data_string);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_HTTPHEADER, array(
	'Content-Type:application/json',
	'Content-Length: ' .strlen($data_string))
);
curl_setopt($ch, CURLOPT_TIMEOUT, 5);
curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);

$result = curl_exec($ch);

curl_close($ch);

echo $result;

?>