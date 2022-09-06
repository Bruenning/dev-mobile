import 'dart:io';

main() {
	stdout.write('Digite seu nome: ');
	var nome = stdin.readLineSync();

	var notas = [];
	var peso = [];

	for (var i = 0; i < 4; i++) {
		stdout.write("Digite a nota: ");
		notas.add(double.parse(stdin.readLineSync()!));

		stdout.write("digite o peso: ");
		peso.add(int.parse(stdin.readLineSync()!));
	}

	double mediaPonderada = 0;
	double somaPesos = 0;

	for (var i = 0; i < 4; i++) {
		mediaPonderada += notas[i] * peso[i];
		somaPesos += peso[i];
	}

	mediaPonderada /= somaPesos;

	print("Nome: $nome");
	print("Média Final: $mediaPonderada");

}
