package ch18.el;

public class Temperature {

	public static Double getFahrenheit(Double value) {
		if (value == null) {
			return null;
		}
		return value * 1.8 + 32.0;
	}
	
	public static String getInfo() {
		return "온도계 변환기 1.1";
	}
}
