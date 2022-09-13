import 'dart:io';

main() {
	var conta = [];
	int count = 0;
	int totalNegativo = 0;
	double saldoAgencia = 0;

	do {
		String tipo = "";

		stdout.write("Digite o Número da Conta: ");
		int numeroConta = int.parse(stdin.readLineSync()!);

		if (numeroConta == -999) break;

		stdout.write("Digite o Nome do Titular: ");
		String nomeTitular = stdin.readLineSync()!;

		if (nomeTitular == "-999") break;

		stdout.write("Digite o Saldo da Conta: ");
		double saldoConta = double.parse(stdin.readLineSync()!);

		if (saldoConta == -999)
			break;
		else if (saldoConta < 0) {
			tipo = "NEGARTIVO";
			totalNegativo += 1;
		} else
			tipo = "POSITIVO";

		conta.add({
			"numeroConta": numeroConta,
			"nomeTitular": nomeTitular,
			"saldoConta": saldoConta,
			"tipo": tipo
		});

		saldoAgencia += saldoConta;

		print("");
		count++;
	
	} while (count < 10);
	print("");

	for (var i = 0; i < conta.length; i++) {
		print("Conta: ${conta[i]["numeroConta"]}");
		print("Titular: ${conta[i]["nomeTitular"]}");
		print("Saldo: ${conta[i]["saldoConta"]}");
		print("Tipo: ${conta[i]["tipo"]}");
		print("");
	}

	print("Total de Contas: ${conta.length}");
	print("Total de Contas Negativas: $totalNegativo");
	print("Saldo da Agência: $saldoAgencia");
}
