import 'package:calculadora_imc/classes/pessoa.dart';

void calcularIMC(String nome, double peso, double altura) {
  // Instanciando a classe Pessoa com os atributos do usuário
  Pessoa pessoa = Pessoa(nome: nome, peso: peso, altura: altura);

  // Tratando exceções resultado do IMC
  try {
    double imc = pessoa.getIMC();
    String classificacao = pessoa.getClassificacaoIMC(imc);

    print(
        "O IMC de ${pessoa.nome} é de ${imc.toStringAsFixed(2)}. Sua classificação de IMC é de $classificacao.");
  } catch (e) {
    print("Ocorreu um erro: $e");
  }
}
