<?php
$url = "http://35.227.127.154:8069";
$db = "baseodoo";
$username = "ivettteacosvaz@gmail.com";
$password = "baseodoo";

require_once('ripcord.php');

$common = ripcord::client("$url/xmlrpc/2/common");

$uid = $common->authenticate($db, $username, $password, array());
echo $uid;

?>