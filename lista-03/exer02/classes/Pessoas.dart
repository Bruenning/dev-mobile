class Pessoas {
	int _idade;

	Pessoas.inicioRapido(this._idade);
	Pessoas([this._idade = 0]);

	set idade(int idade) {
		if(idade > 0 && idade < 140){
			_idade = idade;
		}
		
	}
	int get idade => _idade;

	bool menor21(){
		return idade < 21;
	}

	bool maior50(){
		return idade > 50;
	}

	@override
	String toString() {
		return 'idade: $_idade';
	}
}


