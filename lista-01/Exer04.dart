import 'dart:io';

main() {
  var notas = [];
  for (var i = 0; i < 3; i++) {
    stdout.write("Digite a nota: ");
    notas.add(double.parse(stdin.readLineSync()!));
  }

  double mediaPonderada = (notas[0] * 2 + notas[1] * 3 + notas[2] * 5) / 10;

  print("Média Final: $mediaPonderada");
}
  