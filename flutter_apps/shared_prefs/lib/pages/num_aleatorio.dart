import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NumeroAleatorioPage extends StatefulWidget {
  const NumeroAleatorioPage({super.key});

  @override
  State<NumeroAleatorioPage> createState() => _NumeroAleatorioPageState();
}

class _NumeroAleatorioPageState extends State<NumeroAleatorioPage> {
  int? numeroGerado;
  // ignore: non_constant_identifier_names
  final String CHAVE_NUM_ALEAT = "numero_aleatorio";

  @override
  void initState() {
    carregarDados();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gerador de números aleatórios'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final storage = await SharedPreferences.getInstance();
          var random = Random();

          setState(() {
            numeroGerado = random.nextInt(1000);
          });
          storage.setInt(CHAVE_NUM_ALEAT, numeroGerado!);
        },
        child: const Icon(Icons.add),
      ),
      body: Container(
        alignment: Alignment.center,
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              numeroGerado.toString(),
              style: const TextStyle(fontSize: 48, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }

  void carregarDados() async {
    final storage = await SharedPreferences.getInstance();

    setState(() {
      numeroGerado = storage.getInt(CHAVE_NUM_ALEAT);
    });
  }
}
