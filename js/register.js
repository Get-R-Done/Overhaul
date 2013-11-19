function CheckPasswords(password) {
	$.ajax({
		type: "POST",
		url: "check.php",
		data: "password=" + escape(password),
		success: function (resps) {
			$("#passwordresult").html(resps);
		}
	});
}

function CheckUsername(name) {
	$.ajax({
		type: "POST",
		url: "checkun.php",
		data: "username=" + escape(name),
		success: function (resps) {
			$("#usernameresult").html(resps);
		}
	});
}

function CheckEmail(email) {
	$.ajax({
		type: "POST",
		url: "checkem.php",
		data: "email=" + escape(email),
		success: function (resps) {
			$("#emailresult").html(resps);
		}
	});
}

function PasswordMatch() {
	pwt1 = $("#pw1").val();
	pwt2 = $("#pw2").val();
	if (pwt1 == pwt2) {
		$("#cpasswordresult").html("<font color='green'>OK</font>");
	} else {
		$("#cpasswordresult").html("<font color='red'>Not Matching</font>");
	}
}
