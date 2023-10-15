import 'package:calculadora_imc/pages/imc_dialog.dart';
import 'package:calculadora_imc/pages/imc_list.dart';
import 'package:calculadora_imc/respositories/imc_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var imcRepository = IMCRepository();
  List<Map<String, dynamic>> _historicoIMC = [];

  void getHistoricoIMC() {
    setState(() {
      _historicoIMC = imcRepository.obterHistorico();
    });
    debugPrint('Histórico IMC: $_historicoIMC');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          'Calculadora de IMC',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        hoverColor: Colors.blueAccent,
        backgroundColor: Colors.blueGrey,
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext bc) {
              return IMCDialog(
                refreshHomePage: getHistoricoIMC,
                imcRepository: imcRepository,
              );
            },
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: SafeArea(
        child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: IMCList(historicoIMC: _historicoIMC)),
      ),
    );
  }
}
