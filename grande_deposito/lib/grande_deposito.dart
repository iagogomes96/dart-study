import 'dart:io';

void main() {
  double valor = double.parse(stdin.readLineSync()!);
  double saldoAtual = 0;

  if (valor > 0) {
    saldoAtual = fazerDeposito(saldoAtual, valor);
    print("Deposito realizado com sucesso!");
    print("Saldo atual: R\$ ${saldoAtual.toStringAsFixed(2)}");
  } else if (valor == 0) {
    print("Encerrando o programa...");
  } else {
    print("Valor invalido! Digite um valor maior que zero.");
  }
}

double fazerDeposito(double saldoAtual, double valorDeposito) {
  return saldoAtual + valorDeposito;
}
