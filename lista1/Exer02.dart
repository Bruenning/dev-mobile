import 'dart:io';

main(){
	stdout.write('Digite o número total de eleitores: ');
	String? eleitores = stdin.readLineSync();

	stdout.write("Votos Brancos: ");
	String? brancos = stdin.readLineSync();

	stdout.write("Votos Nulos: ");
	String? nulos = stdin.readLineSync();

	stdout.write("Votos Validos: ");
	String? validos = stdin.readLineSync();

	int total = int.parse(eleitores!);
	int branco = int.parse(brancos!);
	int nulo = int.parse(nulos!);
	int valido = int.parse(validos!);
	double totalVotosBrancosPorcentagem = (branco/ total)*100;
	double totalVotosNulosPorcentagem = (nulo/ total)*100;
	double totalVotosValidosPorcentagem = (valido/ total)*100;

	print("Total de eleitores: $total");
	print("Votos Brancos: $totalVotosBrancosPorcentagem%");
	print("Votos Nulos: $totalVotosNulosPorcentagem%");
	print("Votos Validos: $totalVotosValidosPorcentagem%");
}