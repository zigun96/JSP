function inputCheck() {
	const {id, pwd, repwd, name, birthday, number, email} = document.regForm;
	if (!id.value.match(/^[a-zA-Z0-9]{3,20}$/)) {
		alert('���̵�� 3 ~ 20�ڷ� �Է��ϼ���!');
		return;	
	}
	if (!pwd.value.match(/^\w{9,}$/)) {
		alert('��й�ȣ�� 9���̻����� �Է��ϼ���!');
		return;
	}
	if (!repwd.value.match(/^\w{9,}$/)) {
		alert('��й�ȣ�� �ٽ� Ȯ�����ּ���!');
		return;
	}
	if (!name.length() >= 2) {
		alert('�̸��� �� ���� �̻� �Է��ϼž��մϴ� !');
		return;
	}
	if (!birthday.value.match(/^\d{4}.\d{2}.\d{2}$/)) {
		alert('1990.01.01 �������� �Է����ּ���!');
		return;
	}
	if (!email.value.match(/^[a-zA-Z0-9]{3, 11}@[a-zA-Z].[a-z]$/)) {
		alert('xxx@xxxxx.xxx �������� �Է����ּ���!');
		return;
	}
	if (!number.value.match(/^\d{3}-\d{4}-\d{4}$/)) {
		alert('��ȭ��ȣ�� �ٽ� Ȯ�����ּ���!');
		return;
	}
	document.regForm.submit();
}