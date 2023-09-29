import 'dart:io';
import 'dart:convert';

void main() {
  print("Insira o saldo atual: ");
  double saldoAtual = double.parse(stdin.readLineSync(encoding: utf8)!);
  print("Insira o valor de depósito: ");
  double valorDeposito = double.parse(stdin.readLineSync(encoding: utf8)!);
  saldoAtual = realizarDeposito(saldoAtual, valorDeposito);
  print("Insira um valor de saque: ");
  double valorRetirada = double.parse(stdin.readLineSync(encoding: utf8)!);
  saldoAtual = realizarSaque(saldoAtual, valorRetirada);
  print("Saldo atualizado na conta: ${saldoAtual.toStringAsFixed(1)}");
}

double realizarDeposito(double saldoAtual, double deposito) {
  return saldoAtual + deposito;
}

double realizarSaque(double saldoAtual, double saque) {
  return saldoAtual - saque;
}
