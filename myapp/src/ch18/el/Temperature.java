package ch18.el;

public class Temperature {

	public static Double getFahrenheit(Double value) {
		if (value == null) {
			return null;
		}
		return value * 1.8 + 32.0;
	}
	
	public static String getInfo() {
		return "�µ��� ��ȯ�� 1.1";
	}
}
