package utils;

public class Calculadora {
	
	public static int sumar(int x, int y) {
		return x + y;
	}
	
	public static String dividir(int x, int y) {
		
		try {
		int z = x/y;
		System.out.println(z);
		return "OK";
		} catch(Exception e ) {
			e.printStackTrace();
			return "NOK";
		}
	}

}
