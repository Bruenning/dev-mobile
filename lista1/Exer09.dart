//salário mensal baseado em horas trabalhadas, com  8% de inss, 11% de imposto de renda e 5% sindicato
import 'dart:io';

main(){

	stdout.write("Digite o número de horas trabalhadas: ");
	var horasTrabalhadas = double.parse(stdin.readLineSync()!);
	
	stdout.write("Digite o valor da hora trabalhada: ");
	var valorHora = double.parse(stdin.readLineSync()!);
	
	var salarioBruto = horasTrabalhadas * valorHora;
	var inss = salarioBruto * 0.08;
	var ir = salarioBruto * 0.11;
	var sindicato = salarioBruto * 0.05;
	var salarioLiquido = salarioBruto - inss - ir - sindicato;
	
	print("Salário Bruto: R\$$salarioBruto");
	print("INSS: R\$$inss");
	print("IR: R\$$ir");
	print("Sindicato: R\$$sindicato");
	print("Salário Líquido: R\$$salarioLiquido");
}