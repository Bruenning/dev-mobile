import 'dart:io';

main() {
	stdout.write("Salário Mensal: ");
	double salario = double.parse(stdin.readLineSync()!);

	stdout.write("reajuste: ");
	double reajuste = double.parse(stdin.readLineSync()!);

	double salarioReajustado = salario + (salario * reajuste / 100);

	print("Salário Reajustado: $salarioReajustado");
}