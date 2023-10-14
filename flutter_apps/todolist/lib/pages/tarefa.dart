import 'package:flutter/material.dart';
import 'package:todolist/models/tarefa.dart';
import 'package:todolist/repositories/tarefa_repository.dart';

class TarefaPage extends StatefulWidget {
  const TarefaPage({super.key});

  @override
  State<TarefaPage> createState() => _TarefaPageState();
}

class _TarefaPageState extends State<TarefaPage> {
  var tarefaRepository = TarefaRepository();
  TextEditingController descController = TextEditingController();
  var _tarefas = const <Tarefa>[];

  @override
  void initState() {
    getTarefas();
    super.initState();
  }

  void getTarefas() async {
    _tarefas = await tarefaRepository.listarTarefas();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          descController.clear();
          showDialog(
              context: context,
              builder: (BuildContext bc) {
                return AlertDialog(
                  title: const Text("Adicionar tarefa"),
                  content: TextField(
                    controller: descController,
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text("Cancelar"),
                    ),
                    TextButton(
                        onPressed: () async {
                          await tarefaRepository
                              .addTarefa(Tarefa(descController.text, false));
                          Navigator.pop(context);
                          setState(() {});
                        },
                        child: const Text("Salvar")),
                  ],
                );
              });
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: _tarefas.length,
        itemBuilder: (BuildContext bc, int index) {
          var tarefa = _tarefas[index];
          return ListTile(
            title: Text(tarefa.descricao),
            trailing: Switch(
              onChanged: (value) async {
                await tarefaRepository.alterarTarefa(tarefa.id, value);
                getTarefas();
              },
              value: tarefa.concluido,
            ),
          );
        },
      ),
    );
  }
}
