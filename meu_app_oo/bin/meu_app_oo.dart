import 'package:meu_app_oo/classes/Pessoa.dart';

void main(List<String> arguments) {
  var p1 = Pessoa("Gomes", "Rua dois"); //utilizando construtores
  p1.setNome("Iago"); //utilizando setter
  p1.setEndereco("Rua um"); //utilizando getter
  print(p1.getNome());
}
