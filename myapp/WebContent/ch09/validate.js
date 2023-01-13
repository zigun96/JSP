function inputCheck() {
	const {id, pwd, repwd, name, birthday, number, email} = document.regForm;
	if (!id.value.match(/^[a-zA-Z0-9]{3,20}$/)) {
		alert('아이디는 3 ~ 20자로 입력하세요!');
		return;	
	}
	if (!pwd.value.match(/^\w{9,}$/)) {
		alert('비밀번호는 9자이상으로 입력하세요!');
		return;
	}
	if (!repwd.value.match(/^\w{9,}$/)) {
		alert('비밀번호를 다시 확인해주세요!');
		return;
	}
	if (!name.length() >= 2) {
		alert('이름은 두 글자 이상 입력하셔야합니다 !');
		return;
	}
	if (!birthday.value.match(/^\d{4}.\d{2}.\d{2}$/)) {
		alert('1990.01.01 형식으로 입력해주세요!');
		return;
	}
	if (!email.value.match(/^[a-zA-Z0-9]{3, 11}@[a-zA-Z].[a-z]$/)) {
		alert('xxx@xxxxx.xxx 형식으로 입력해주세요!');
		return;
	}
	if (!number.value.match(/^\d{3}-\d{4}-\d{4}$/)) {
		alert('전화번호를 다시 확인해주세요!');
		return;
	}
	document.regForm.submit();
}