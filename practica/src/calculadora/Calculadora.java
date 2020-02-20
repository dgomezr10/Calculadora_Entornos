package calculadora;
public class Calculadora {
	int num1;
	int num2;
	public String Calculacion(String num){
		num1 = numBefore(num);
		num2 = numAfter(num);
		
		return Integer.toString(Operacion(num1,num2,num));
	}
	 int Operacion(int num12, int num22, String num) {
		 for(int i = 0; i < num.length(); i++) {
				if (!(Character.isDigit(num.charAt(i)))){
					if(num.charAt(i) == '+') {
						return num1 + num2;
					} else if(num.charAt(i) == '-'){
						return num1 - num2;
					} else if(num.charAt(i) == '*'){
						return num1 * num2;
					} else {
						return num1 / num2;
					}
				}
			}
		return 0;
	}
	int numBefore(String num){
		String operador = "";
		for(int i = 0; i < num.length(); i++) {
			if (!(Character.isDigit(num.charAt(i)))){
				return Integer.parseInt(operador);
			}
			operador += num.charAt(i);
		}
		return 0;
	}
	int numAfter(String num){
		String operador = "";
		int count = 0;
		for(int i = 0; i < num.length(); i++) {
			if(count == 1) {
				operador += num.charAt(i);
			}
			if(!(Character.isDigit(num.charAt(i))))count ++;
		}
		return Integer.parseInt(operador);
	}
}
