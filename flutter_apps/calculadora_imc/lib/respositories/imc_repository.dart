import 'package:calculadora_imc/models/pessoa.dart';

class IMCRepository {
  List<Map<String, dynamic>> historicoIMC = [];

  void addIMC(double peso, double altura) {
    Pessoa pessoa = Pessoa(peso: peso, altura: altura);
    historicoIMC.add({
      'peso': pessoa.peso,
      'altura': pessoa.altura,
      'imc': pessoa.getIMC(),
      'classificacao': pessoa.getClassificacaoIMC(pessoa.getIMC()),
    });
  }

  List<Map<String, dynamic>> obterHistorico() {
    return historicoIMC;
  }
}
