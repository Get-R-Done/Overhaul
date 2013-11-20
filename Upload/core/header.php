<?php
class headers
{
	function startheaders()
	{
		global $ir, $set;
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link href="../css/game.css" type="text/css" rel="stylesheet" />
<script src="../js/jquery-1.7.1.min.js"></script>
<title><?php echo $set['game_name']?></title>
</head>
<body>
<center>
<table width="970" border="0" cellpadding="0" cellspacing="0" class="table2">
<tr>
<td class="lgrad"></td>
<td class="center">
<?php
	}
	function userdata($ir, $lv, $fm, $cm, $dosessh = 1)
	{
		global $db, $c, $userid, $set;
		$IP = IP();
		$db->query("UPDATE `users`
                 SET `laston` = {$_SERVER['REQUEST_TIME']}, `lastip` = '$IP'
                 WHERE `userid` = $userid");
		if (!$ir['email']) {
			global $domain;
			error("<body>Your account may be broken. Please mail help@{$domain} stating your username and player ID.");
		}
		if (!isset($_SESSION['attacking'])) {
			$_SESSION['attacking'] = 0;
		}
		if ($dosessh && ($_SESSION['attacking'] || $ir['attacking'])) {
			warning('You lost all your EXP for running from the fight.');
			$db->query("UPDATE `users`
                     SET `exp` = 0, `attacking` = 0
                     WHERE `userid` = $userid");
			$_SESSION['attacking'] = 0;
		}
		$enperc = min((int) ($ir['energy'] / $ir['maxenergy'] * 100), 100);
		$wiperc = min((int) ($ir['will'] / $ir['maxwill'] * 100), 100);
		$experc = min((int) ($ir['exp'] / $ir['exp_needed'] * 100), 100);
		$brperc = min((int) ($ir['brave'] / $ir['maxbrave'] * 100), 100);
		$hpperc = min((int) ($ir['hp'] / $ir['maxhp'] * 100), 100);
		$enopp  = 100 - $enperc;
		$wiopp  = 100 - $wiperc;
		$exopp  = 100 - $experc;
		$bropp  = 100 - $brperc;
		$hpopp  = 100 - $hpperc;
		global $staffpage;
?>
<img src="image/layout/title.jpg" alt="Mccodes Version 2" /><br />
<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
<td width="20%" bgcolor="#FFFFFF" valign="top">
<!-- Side Panel -->
<b>Name:</b> <?php echo username($ir['userid'], true, true)?><br />
<b>Money:</b> <?php echo $fm?><br />
<b>Level:</b> <?php echo number_format($ir['level'])?><br />
<b>Crystal<?php echo s($ir['crystals'])?>:</b> <?php echo number_format($ir['crystals'])?><br />
[<a href='logout.php'>Emergency Logout</a>]
<hr />
<b>Energy:</b> <?php echo $enperc?>%<br />
<img src='image/bars/greenbar.png' width='<?php echo $enperc?>' height='10' alt='green bar' /><img src='image/bars/redbar.png' alt='red bar' width='<?php echo $enopp ?>' height='10' /><br />
<b>Will:</b> <?php echo $wiperc ?>%<br />
<img src='image/bars/bluebar.png' width='<?php echo $wiperc?>' height='10' alt='blue bar' /><img src='image/bars/redbar.png' alt='red bar' width='<?php echo $wiopp?>' height='10' /><br />
<b>Brave:</b> <?php echo $ir['brave']?>/<?php echo $ir['maxbrave']?><br />
<img src='image/bars/yellowbar.png' width='<?php echo $brperc?>' height='10' alt='yellow bar'/><img src='image/bars/redbar.png' width='<?php echo $bropp?>' alt='red bar' height='10' /><br />
<b>EXP:</b> <?php echo $experc?>%<br />
<img src='image/bars/bluebar.png' width='<?php echo $experc?>' height='10' alt='blue bar' /><img src='image/bars/redbar.png' width='<?php echo $exopp?>' alt='red bar' height='10' /><br />
<b>Health:</b> <?php echo $hpperc?>%<br />
<img src='image/bars/greenbar.png' width='<?php echo $hpperc?>' height='10' alt='green bar' /><img src='image/bars/redbar.png' width='<?php echo $hpopp?>' alt='red bar' height='10' /><br /><hr />
<?php
		if ($ir['fedjail'] > 0) {
			$q = $db->query("SELECT *
                             FROM `fedjail`
                             WHERE `fed_userid` = $userid");
			$r = $db->fetch_row($q);
			error("<span class='new'>
                    You have been put in the {$set['game_name']} Federal Jail
                     for {$r['fed_days']} day(s).<br />
                    Reason: {$r['fed_reason']}
                    </span></body></html>");
		}
		if (file_exists('ipbans/' . $IP)) {
			error("<span class='new'>
                    Your IP has been banned from {$set['game_name']},
                     there is no way around this.
                    </span></body></html>");
		}
	}
	function menuarea()
	{
		define('jdsf45tji', true, true);
		include 'mainmenu.php';
		global $ir, $c;
		echo '</td><td width="2" class="linegrad" bgcolor="#FFFFFF">&nbsp;</td><td width="80%"  bgcolor="#FFFFFF" valign="top"><br /><center>';
		if ($ir['hospital'])
			info("<b>NB:</b> You are currently in hospital for {$ir['hospital']} minutes.<br />");
		if ($ir['jail'])
			info("<b>NB:</b> You are currently in jail for {$ir['jail']} minutes.<br />");
		echo "<a href='donator.php'><b>Donate to {$set['game_name']} now for game benefits!</b></a><br />";
	}
	function smenuarea()
	{
		define('jdsf45tji', true, true);
		include 'smenu.php';
		global $ir, $c;
		echo '</td><td width="2" class="linegrad" bgcolor="#FFFFFF">&nbsp;</td><td width="80%"  bgcolor="#FFFFFF" valign="top"><center>';
	}
	function endpage()
	{
		global $db, $ir;
		$query_extra = '';
		if (isset($_GET['mysqldebug']) && $ir['user_level'] == 2) {
			$query_extra = '<br />' . implode('<br />', $db->queries);
		}
?>
</center>
</td>
</tr>
</table></td>
<td class="rgrad"></td>
</tr>
<tr>
<td colspan="3">
<table cellpadding="0" cellspacing="0" border="0" width="100%">
<tr>
<td class="dgradl">&nbsp;</td>
<td class="dgrad">&nbsp;</td>
<td class="dgradr">&nbsp;</td>
</tr>
</table>
</td>
</tr>
</table>
                <?php echo $db->num_queries;?>queries <?php echo $query_extra?></center></body>
</html>
<?php
	}
}
?>
