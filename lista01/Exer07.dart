import 'dart:io';

main() {
	var numInteiro = [];
	double numReal = 0;
	for (var i = 0; i < 3; i++) {
		print(i);
		if (i < 2) {
		stdout.write("Digite um número inteiro: ");
		numInteiro.add(int.parse(stdin.readLineSync()!));
		} else {
		stdout.write("Digite um número real(separação por .) : ");
		numReal = double.parse(stdin.readLineSync()!);
		}
	}

	int produto = ((numInteiro[0] * 2) % (numInteiro[1] / 2));
	double triplo = (numInteiro[0] * 3) + numReal;

	print("Números: ${numInteiro.join(", ")}");
	print("Número real: $numReal");
	print("produto do dobro do primeiro com metade do segundo: $produto");
	print("triplo do primeiro mais o terceiro: $triplo");
}
