import 'package:flutter/foundation.dart';
import 'package:todolist/models/tarefa.dart';

class TarefaRepository {
  final List<Tarefa> _tarefas = [];

  Future<void> addTarefa(Tarefa tarefa) async {
    await Future.delayed(const Duration(seconds: 1));
    _tarefas.add(tarefa);
  }

  Future<void> alterarTarefa(String id, bool concluido) async {
    await Future.delayed(const Duration(seconds: 1));

    final tarefaParaAtualizar =
        _tarefas.firstWhere((tarefa) => tarefa.id == id);
    tarefaParaAtualizar.concluido = concluido;
  }

  Future<List<Tarefa>> listarTarefas() async {
    await Future.delayed(const Duration(seconds: 1));
    return _tarefas;
  }
}
