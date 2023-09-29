import 'dart:io';
import 'dart:math';

void main() {
  print("Valor inicial: ");
  var valorInicial = double.parse(stdin.readLineSync()!);
  print("Taxa de juros: ");
  var taxaJuros = double.parse(stdin.readLineSync()!);
  print("Periodo: ");
  var periodo = int.parse(stdin.readLineSync()!);

  var valorFinal = valorInicial;

  valorFinal = calculaJuros(valorInicial, taxaJuros, periodo);

  print("Valor final do investimento: R\$ ${valorFinal.toStringAsFixed(2)}");
}

double calculaJuros(double valorInicial, double taxaJuros, int periodo) {
  /* A fórmula para calculo de juros composto é: M = C * (1 + i)^t Onde:
      M: Montante gerado
      C: valor investido
      i: juros anual (em decimal)
      t: período de investimento
  */
  return valorInicial * pow(1 + taxaJuros, periodo);
}
