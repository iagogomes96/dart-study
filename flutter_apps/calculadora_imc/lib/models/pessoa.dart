import 'dart:math' as math;

class Pessoa {
  double _peso;
  double _altura;

  // Construtor
  Pessoa({required double peso, required double altura})
      : _peso = peso,
        _altura = altura;

  // Getter e Setter para o peso
  double get peso => _peso;
  set peso(double peso) {
    _peso = peso;
  }

  // Getter e Setter para o nome
  double get altura => _altura;
  set altura(double altura) {
    _altura = altura;
  }

  double getIMC() {
    return peso / (math.pow(altura, 2));
  }

  String getClassificacaoIMC(double imc) {
    final List<Map<String, dynamic>> faixas = [
      {"classificacao": "magreza grave", "min": 0.0, "max": 16.0},
      {"classificacao": "magreza moderada", "min": 16.0, "max": 17.0},
      {"classificacao": "magreza leve", "min": 17.0, "max": 18.5},
      {"classificacao": "saudável", "min": 18.5, "max": 25.0},
      {"classificacao": "sobrepeso", "min": 25.0, "max": 30.0},
      {"classificacao": "obesidade Grau I", "min": 30.0, "max": 35.0},
      {"classificacao": "obesidade Grau II", "min": 35.0, "max": 40.0},
      {
        "classificacao": "obesidade Grau III",
        "min": 40.0,
        "max": double.infinity
      },
    ];

    for (var faixa in faixas) {
      double min = faixa["min"];
      double max = faixa["max"];

      if (imc >= min && imc < max) {
        return faixa["classificacao"];
      }
    }

    return "Classificação desconhecida";
  }
}
