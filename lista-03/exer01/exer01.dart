import 'classes/Cliente.dart';
import 'classes/Produto.dart';
import 'classes/VendaItem.dart';
import 'classes/venda.dart';

main(){
	var venda = Venda(
		cliente: Cliente(nome: "João", cpf: "123.456.789-00"),
		itens: [
			VendaItem(produto: Produto(nome: "Produto 1", preco: 100), quantidade: 2),
			VendaItem(produto: Produto(nome: "Produto 2", preco: 200), quantidade: 1),
			VendaItem(produto: Produto(nome: "Produto 3", preco: 300), quantidade: 3),
		]
	);
	
	print(venda.valorTotal);

}