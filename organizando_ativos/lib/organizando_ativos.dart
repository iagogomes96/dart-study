import 'dart:io';

void main() {
  //Entrada dos tipos de ativos
  var quantidadeAtivos = int.parse(stdin.readLineSync()!);

  List<String> ativos = [];

  // Entrada dos códigos dos ativos
  for (var i = 0; i < quantidadeAtivos; i++) {
    var codigoAtivo = stdin.readLineSync()!;
    ativos.add(codigoAtivo);
  }

  //o metódo sort organiza a lista em ordem alfabética e organiza números em ordem crescente
  ativos.sort();

  for (var ativo in ativos) {
    print(ativo);
  }
}
