//ler idade de pessoas, verificar quantas pessoas são menores de 21 anos e quantas são maiores de 50 anos
import 'dart:io';

import 'classes/Pessoas.dart';

main(){
	List<Pessoas> p = <Pessoas>[]; //lista de pessoas
	int cont21 = 0;
	int cont50 = 0;
	int sair = 0;	

	do{

		Pessoas pessoa = Pessoas();
		int countErro = 0;
 		do{
			if(countErro > 0){
				print('Idade inválida, digite novamente');
			}

			print("Digite a idade: ");
			pessoa.idade = int.parse(stdin.readLineSync()!);
			
			countErro++;	
		}while(pessoa.idade == 0);

		p.add(pessoa);


		print("Deseja sair?\n0 - Sim\t\t1 - Não");
		sair = int.parse(stdin.readLineSync()!);

	}while(sair != 0);

	for(int i = 0; i < p.length; i++){
		print("Pessoa $i: "+p[i].toString());
		if(p[i].menor21()){
			cont21++;
		}
		if(p[i].maior50()){
			cont50++;
		}
	}


	print("Total de pessoas: ${p.length}");
	print("Pessoas menores de 21 anos: $cont21");
	print("Pessoas maiores de 50 anos: $cont50");


}