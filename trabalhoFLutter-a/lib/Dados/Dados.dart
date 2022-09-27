// ignore: file_names
import 'package:trabalhoFlutter/objetos/Jogo.dart' show Jogo;

class Dados{

	List<String> dadosSalvos = <String>[];
	Jogo jogo = Jogo();
	

	@override
	String toString() {
		late StringBuffer dados = StringBuffer();

		for (var element in dadosSalvos) {
			dados.write(element);
			dados.write('\n');
		}

		return dados.toString();
	}
}