import 'package:calculadora_imc/calculadora_imc.dart' as calculadora_imc;
import 'package:calculadora_imc/classes/validador.dart';
import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  String nome;
  double peso;
  double altura;
  print("######## CALCULADORA DE IMC ########");

  while (true) {
    // Inserção do nome
    while (true) {
      print("Insira o seu nome: ");
      String? entrada = stdin.readLineSync(encoding: utf8) ?? '';
      // Verifica se o nome é um valor válido não nulo
      if (Validador.validarNome(entrada)) {
        nome = entrada.toString();
        print("Nome validado: $nome");
        break;
      } else {
        print("Nome inválido. Tente novamente.");
      }
    }

    // Inserção do peso
    while (true) {
      print("Insira o seu peso: ");
      String? entrada = stdin.readLineSync(encoding: utf8) ?? '';
      double? valorEntrada = double.tryParse(entrada);
      // Verifica se o nome é um valor válido não nulo
      if (Validador.validarPeso(valorEntrada)) {
        peso = valorEntrada!;
        print("Peso validado: $peso");
        break;
      } else {
        print("Peso inválido. Tente novamente.");
      }
    }

    // Inserção de altura
    while (true) {
      print("Insira a sua altura: ");
      String? entrada = stdin.readLineSync(encoding: utf8) ?? '';
      double? valorEntrada = double.tryParse(entrada);

      // Verifica se o nome é um valor válido não nulo
      if (Validador.validarAltura(valorEntrada)) {
        altura = valorEntrada!;
        print("Altura validada: $altura");
        break;
      } else {
        print("Altura inválida. Tente novamente.");
      }
    }
    break;
  }

  calculadora_imc.calcularIMC(nome, peso, altura);
}
