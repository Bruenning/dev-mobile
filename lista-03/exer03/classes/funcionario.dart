class funcionario{
	String _nome;
	double _salario;

	funcionario.inicioRapido(this._nome, this._salario);
	funcionario([this._nome = "", this._salario = 0]);

	set nome(String nome) {
		_nome = nome;
	}

	String get nome => _nome;

	set salario(double salario) {
		_salario = salario;
	}

	double get salario => _salario;

	double comissao(double valorVenda, double comissao){
		return valorVenda * comissao;
	}

	double salarioFinal(double comissao){
		return salario + comissao;
	}

	@override
	String toString() {
		return 'nome: $_nome, salario: $_salario';
	}
}