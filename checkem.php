<?php
if (isset($_SERVER['REQUEST_METHOD']) && is_string($_SERVER['REQUEST_METHOD'])) {
	if (strtoupper($_SERVER['REQUEST_METHOD']) !== 'POST') {
		header('HTTP/1.1 400 Bad Request');
		exit;
	}
}
require_once('global_func.php');
if (!is_ajax()) {
	header('HTTP/1.1 400 Bad Request');
	exit;
}
function valid_email($email)
{
	return (filter_var($email, FILTER_VALIDATE_EMAIL) === $email);
}
require_once('globals_nonauth.php');
$email = isset($_POST['email']) ? stripslashes($_POST['email']) : '';
if (empty($email)) {
	die("<font color='red'>Invalid - Blank</font>");
}
if (!valid_email($email)) {
	die("<font color='red'>Invalid - Bad Format</font>");
}
$e_email = $db->escape($email);
$q       = $db->query("SELECT COUNT(`userid`) FROM users WHERE `email` = '{$e_email}'");
if ($db->fetch_single($q) != 0) {
	echo '<font color=\'red\'>Invalid - Already In Use</font>';
} else {
	echo '<font color=\'green\'>Valid</font>';
}
$db->free_result($q);
?>
