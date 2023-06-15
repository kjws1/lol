function insertcheck() {
	if (document.boardform.passwd.value==""){
		alert("Please enter the password");
		document.boardform.passwd.focus();
		return;
	}
	if (document.boardform.name.value==""){
		alert("Please enter the name");
		document.boardform.name.focus();
		return;
	}
	document.boardform.menu.value="insert";
	document.boardform.submit();
}
function updatecheck() {
	if (document.boardform.passwd.value==""){
		alert("Please enter the password");
		document.boardform.passwd.focus();
		return;
	}
	if (document.boardform.name.value==""){
		alert("Please enter the name");
		document.boardform.name.focus();
		return;
	}
	document.boardform.menu.value="update";
	document.boardform.submit();
}
function deletecheck() {
	if (document.boardform.passwd.value==""){
		alert("Please enter the password");
		document.boardform.passwd.focus();
		return;
	}
	const ok = confirm("Are you sure you want to delete it?");
	if (!ok) {
		return;
	}
	document.boardform.menu.value="delete";
	document.boardform.submit();
}