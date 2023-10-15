import 'package:calculadora_imc/models/validador.dart';
import 'package:calculadora_imc/respositories/imc_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class IMCDialog extends StatefulWidget {
  final Function refreshHomePage;
  final IMCRepository imcRepository;

  const IMCDialog({
    super.key,
    required this.refreshHomePage,
    required this.imcRepository,
  });

  @override
  State<IMCDialog> createState() => _IMCDialogState();
}

class _IMCDialogState extends State<IMCDialog> {
  final TextEditingController _pesoController = TextEditingController();
  final TextEditingController _alturaController = TextEditingController();
  late final _imcRepository = widget.imcRepository;
  final _formKey = GlobalKey<FormState>();

  void _calcularIMC() {
    if (_formKey.currentState!.validate()) {
      double peso = double.parse(_pesoController.text.replaceAll(',', '.'));
      double altura = double.parse(_alturaController.text.replaceAll(',', '.'));
      _imcRepository.addIMC(peso, altura);
      widget.refreshHomePage();
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Inserir dados de IMC'),
      content: Form(
        key: _formKey,
        child: Wrap(
          spacing: 8.0,
          children: [
            TextFormField(
              controller: _pesoController,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                labelText: 'Peso (kg)',
                labelStyle: const TextStyle(color: Colors.blue),
                hintText: 'Ex: 100.16',
                hintStyle: const TextStyle(fontSize: 14),
              ),
              validator: (value) {
                if (!Validador.validarPeso(value)) {
                  return 'Insira um valor de peso válido.';
                }
                return null;
              },
            ),
            const SizedBox(height: 30),
            TextFormField(
              controller: _alturaController,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                labelText: 'Altura (m)',
                labelStyle: const TextStyle(color: Colors.blue),
                hintText: 'Ex: 1.78',
                hintStyle: const TextStyle(fontSize: 14),
              ),
              validator: (value) {
                if (!Validador.validarAltura(value)) {
                  return 'Insira um valor de altura válido.';
                }
                return null;
              },
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text(
            'Cancelar',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 14,
              color: Colors.blueGrey,
            ),
          ),
        ),
        TextButton(
          onPressed: _calcularIMC,
          child: const Text(
            'Calcular',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blue),
          ),
        )
      ],
    );
  }
}
