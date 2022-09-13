//função que realiza comissão de venda, parametros valor da venda e porcentagem de comissão, salario do vendedor e nome do vendedor
import 'dart:io';

import 'classes/funcionario.dart';

main(){
	double comissao = 0;
	double valorVendas = 0;
	funcionario f = new funcionario();

	print("Digite o nome do funcionario: ");
	f.nome = stdin.readLineSync()!;

	print("Digite o salario do funcionario: ");
	f.salario = double.parse(stdin.readLineSync()!);

	print("Digite o valor das vendas: ");
	valorVendas = double.parse(stdin.readLineSync()!);

	print("Digite a porcentagem de comissao: ");
	comissao = double.parse(stdin.readLineSync()!);

	print("O funcionario ${f.nome} recebeu uma comissao de ${f.comissao(valorVendas, comissao)} e seu salario final é ${f.salarioFinal(f.comissao(valorVendas, comissao))}");
}