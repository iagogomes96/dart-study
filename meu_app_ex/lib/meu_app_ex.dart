import 'package:meu_app_ex/models/aluno.dart';
import 'package:meu_app_ex/models/console_utils.dart';

void execute() {
  String nome = ConsoleUtils.lerStringComTexto("Digite o nome do aluno: ");
  if (nome.trim() == "") {
    throw Exception("O nome não pode ser vazo");
  }
  var aluno = Aluno(nome);
  double? nota;
  do {
    nota = ConsoleUtils.lerDoubleComTextoComSaida(
        "Digite a nota ou S para sair", "S");
    if (nota != null) {
      aluno.addNotas(nota);
    }
  } while (nota != null);
  print("As notas digitadas foram: ${aluno.getNotas()}");
  if (aluno.aprovado(7)) {
    print(
        "O aluno ${aluno.getNome()} foi aprovado com média ${aluno.retornaMedia()}");
  } else {
    print(
        "O aluno ${aluno.getNome()} foi reprovado com média ${aluno.retornaMedia()}");
  }
}
