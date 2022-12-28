function inputCheck() {
	const {mem_id, mem_pwd, mem_repwd} = document.regFrm;
	if (!mem_id.value.match(/^[a-zA-Z0-9]{3,20}$/)) {
		alert('아이디는 3 ~ 20자로 입력하세요!');
		return;	
	}
	if (!mem_pwd.value.match(/^\w{9,}$/)) {
		alert('비밀번호는 9자이상으로 입력하세요!');
		return;
	}
	if (!mem_repwd.value.match(/^\w{9,}$/)) {
		alert('비밀번호를 다시 확인해주세요!');
	}
	if (!mem_birthday.value.match(/^\d{3}-\d{4}-\d{4}$/)) {
		alert('전화번호를 다시 확인해주세요!');
	}
	
	document.regFrm.submit();
}