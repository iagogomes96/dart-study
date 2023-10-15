import 'package:flutter/foundation.dart';

class Validador {
  static bool validarPeso(String? peso) {
    if (peso == null) {
      return false;
    }
    RegExp regex = RegExp(r'^\d+([\.,]\d+)?$');
    debugPrint('Peso: $peso, Validação: ${regex.hasMatch(peso)}');
    return regex.hasMatch(peso);
  }

  static bool validarAltura(String? altura) {
    if (altura == null) {
      return false;
    }
    RegExp regex = RegExp(r'^\d+(\.|\,)\d+$');
    debugPrint('Altura: $altura, Validação: ${regex.hasMatch(altura)}');
    return regex.hasMatch(altura);
  }
}
