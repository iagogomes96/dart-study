import 'dart:io';

void main() {
  // Entrada de dados
  print("Saldo total: ");
  int saldoTotal = int.parse(stdin.readLineSync()!);
  print("Saque: ");
  int valorSaque = int.parse(stdin.readLineSync()!);

  // Verifica se o saldo é menor que o valor de saque
  if (saldoTotal >= valorSaque) {
    saldoTotal = realizarSaque(saldoTotal, valorSaque);
    print("Saque realizado com sucesso! Novo saldo: $saldoTotal");
  } else {
    print("Saldo insuficiente. Saque nao realizado!");
  }
}

int realizarSaque(int saldoTotal, int valorSaque) {
  // Retorna o novo saldo após o saque
  return saldoTotal - valorSaque;
}
