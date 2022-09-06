import 'dart:io';

main() {
  stdout.write('Digite um número: ');
  String? num = stdin.readLineSync();

  int numero = int.parse(num!);

  print("Seu antecessor é: "+(numero-1).toString());
}
