class Produto {
	int? codigo;
	String? nome;
	double preco;
	double desconto;

	Produto({this.codigo, this.nome, this.preco = 0, this.desconto = 0});

	double get precoComDesconto {
		return preco - (preco * (desconto / 100));
	}
}
