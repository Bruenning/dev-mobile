import 'dart:io';

main(){
	stdout.write("Grau Fahrenheit: ");
	double f = double.parse(stdin.readLineSync()!);

	double c = (f - 32) * 5 / 9;

	print("Grau Celsius: $c");

}