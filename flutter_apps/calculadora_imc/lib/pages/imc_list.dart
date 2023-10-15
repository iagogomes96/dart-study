import 'package:flutter/material.dart';

class IMCList extends StatelessWidget {
  final List<Map<String, dynamic>> historicoIMC;

  const IMCList({super.key, required this.historicoIMC});

  Color getClassificacaoColor(String classificacao) {
    if (classificacao == 'saudável') {
      return Colors.green;
    } else if (classificacao == 'sobrepeso') {
      return Colors.orange;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: historicoIMC.length,
      itemBuilder: (BuildContext context, int index) {
        var historico = historicoIMC[index];
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: ListTile(
            title: Text(
              'IMC para Peso ${historico['peso']}kg e Altura ${historico['altura']}m',
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 16),
            ),
            subtitle: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      'IMC: ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '${historico['imc'].toStringAsFixed(2)}',
                      style: TextStyle(
                          color:
                              getClassificacaoColor(historico['classificacao']),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'Classificação: ',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '${historico['classificacao']}',
                      style: TextStyle(
                        color:
                            getClassificacaoColor(historico['classificacao']),
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
