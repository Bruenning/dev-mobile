import "./Produto.dart";

class VendaItem {
	Produto? produto;
	int quantidade;
	double _preco = 0;
	
	VendaItem({this.produto, this.quantidade = 0});
	
	double get preco {
		if(produto != null && _preco == 0)
			this._preco = produto!.precoComDesconto;
		
		return this._preco;
	}

	set preco(double novoPreco){
		if(novoPreco > 0 ) 
			this._preco = novoPreco;
	}
}