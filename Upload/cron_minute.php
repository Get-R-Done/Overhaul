<?php
require_once('globals_nonauth.php');
if ($argc == 2) {
	if ($argv[1] != $_CONFIG['code']) {
		exit;
	}
} else if (!isset($_GET['code']) || $_GET['code'] !== $_CONFIG['code']) {
	exit;
}
$db->query("UPDATE `users` SET `hospital` = GREATEST(`hospital` - 1, 0), `jail` = GREATEST(`jail` - 1, 0)");
$counts = $db->fetch_row($db->query("SELECT SUM(IF(`hospital` > 0, 1, 0)) AS `hc`, SUM(IF(`jail` > 0, 1, 0)) AS `jc` FROM `users`"));
$db->query("UPDATE `settings` SET `conf_value` = '{$counts['hc']}' WHERE `conf_name` = 'hospital_count'");
$db->query("UPDATE `settings` SET `conf_value` = '{$counts['jc']}' WHERE `conf_name` = 'jail_count'");
?>
