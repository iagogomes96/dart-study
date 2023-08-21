import 'package:meu_app/meu_app.dart' as meu_app;
import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  print("Calculadora em Dart");
  var option = "";

  do {
    print("Digite o primeiro número: ");
    var line = stdin.readLineSync(encoding: utf8);
    option = line ?? "";
    var number1 = double.parse(option);
    print("Digite o segundo número: ");
    line = stdin.readLineSync(encoding: utf8);
    option = line ?? "";
    var number2 = double.parse(option);
    print(
        "Escolha a operação que deseja realizar\n [+ para Soma | - para Subtração | * para Multiplicação | / para Divisão | % para Resto]: ");
    line = stdin.readLineSync(encoding: utf8);
    option = line ?? "";
    var operation = option;

    if (number1 != null && number2 != null) {
      print(
          "O resultado da sua equação é: ${meu_app.calculate(number1, number2, operation)}");
    }
    print(
        "Deseja continuar a utilizar a calculadora? Digite Y para sim e N para não");
    line = stdin.readLineSync(encoding: utf8);
    option = line ?? "";
  } while (option != "N");
}
