//peso ideal por sexo e altura
import 'dart:io';

main() {
	stdout.write("Digite o seu sexo: ");
	var sexo = stdin.readLineSync();
	stdout.write("Digite a sua altura: ");
	var altura = double.parse(stdin.readLineSync()!);
	var pesoIdeal;

	
	if (sexo == "masculino") {
		pesoIdeal = (72.7 * altura) - 58;
	} else {
		pesoIdeal = (62.1 * altura) - 44.7;
	}
	print("Peso ideal: $pesoIdeal");
}
