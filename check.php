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
if (!isset($_POST['password'])) {
	die("Whats this document for?");
} elseif (isset($_POST['password'])) {
	$PASS     = stripslashes(strip_tags(htmlentities($_POST['password'], ENT_QUOTES, 'ISO-8859-1')));
	$strength = 1;
	if ($PASS != NULL) {
		$numbers   = array(
			1 => "1",
			2 => "2",
			3 => "3",
			4 => "4",
			5 => "5",
			6 => "6",
			7 => "7",
			8 => "8",
			9 => "9",
			0 => "0"
		);
		$undercase = array(
			1 => "a",
			2 => "b",
			3 => "c",
			4 => "d",
			5 => "e",
			6 => "f",
			7 => "g",
			8 => "h",
			9 => "i",
			10 => "j",
			11 => "k",
			12 => "l",
			13 => "m",
			14 => "n",
			15 => "o",
			16 => "p",
			17 => "q",
			18 => "r",
			19 => "s",
			20 => "t",
			21 => "u",
			22 => "v",
			23 => "w",
			24 => "x",
			25 => "y",
			26 => "z"
		);
		$uppercase = array(
			1 => "A",
			2 => "B",
			3 => "C",
			4 => "D",
			5 => "E",
			6 => "F",
			7 => "G",
			8 => "H",
			9 => "I",
			10 => "J",
			11 => "K",
			12 => "L",
			13 => "M",
			14 => "N",
			15 => "O",
			16 => "P",
			17 => "Q",
			18 => "R",
			19 => "S",
			20 => "T",
			21 => "U",
			22 => "V",
			23 => "W",
			24 => "X",
			25 => "Y",
			26 => "Z"
		);
		$symbs     = array(
			'\\',
			'/',
			'"',
			"'",
			"{",
			"}",
			")",
			"(",
			"|",
			"?",
			".",
			",",
			"<",
			">",
			"_",
			"-",
			"!",
			"#",
			"\$",
			"%",
			"^",
			"&",
			"*"
		);
		$strength  = 0;
		if (strlen($PASS) >= 7) {
			$strength += 3;
		}
		$nc = 0;
		foreach ($numbers as $v) {
			if (strstr($PASS, $v)) {
				$nc++;
			}
		}
		if ($nc >= 2) {
			$strength += 1;
		}
		if ($nc >= 5) {
			$strength += 1;
		}
		$nc = 0;
		foreach ($undercase as $v) {
			if (strstr($PASS, $v)) {
				$nc++;
			}
		}
		if ($nc >= 2) {
			$strength += 1;
		}
		if ($nc >= 5) {
			$strength += 1;
		}
		$nc = 0;
		foreach ($uppercase as $v) {
			if (strstr($PASS, $v)) {
				$nc++;
			}
		}
		if ($nc >= 2) {
			$strength += 1;
		}
		if ($nc >= 5) {
			$strength += 1;
		}
		$nc = 0;
		foreach ($symbs as $v) {
			if (strstr($PASS, $v)) {
				$nc++;
			}
		}
		if ($nc >= 1) {
			$strength += 1;
		}
		if ($nc >= 2) {
			$strength += 1;
		}
		if ($nc >= 5) {
			$strength += 1;
		}
		if ($strength <= 2) {
			$overall = '<span style="color:#FF0000">Weak</span>';
		} elseif ($strength <= 5) {
			$overall = '<span style="color:#999900">Moderate</span>';
		} elseif ($strength <= 10) {
			$overall = '<span style="color:#008800">Good</span>';
		} elseif ($strength >= 12) {
			$overall = '<span style="color:#0000ff">Excellent</span>';
		}
		echo 'Password strength: ' . $overall . '';
	} elseif ($PASS == NULL) {
		echo '';
	}
}
?>
