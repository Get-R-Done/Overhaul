<?php
include(__DIR__ . '/globals.php');
$ac = $ir['new_announcements'];
$q  = $db->query("SELECT `a_text`, `a_time` FROM `announcements` " . "ORDER BY `a_time` DESC");
echo '<table width="80%" cellspacing="1" cellpadding="1" class="table">
		<tr>
	<th width="30%">Time</th>
	<th width="70%">Announcement</th>
		</tr>';
while ($r = $db->fetch_row($q)) {
	if ($ac > 0) {
		$ac--;
		$new = '<br /><b>New!</b>';
	} else {
		$new = '';
	}
	echo '<tr>
	<td>' . date('F j Y, g:i:s a', $r['a_time']) . $new . '</td>
	<td>' . nl2br($r['a_text']) . '</td>
		</tr>';
}
$db->free_result($q);
echo '</table>';
if ($ir['new_announcements'] > 0) {
	$db->query("UPDATE `users` " . "SET `new_announcements` = 0 " . "WHERE `userid` = '{$userid}'");
}
$h->endpage();
?>
