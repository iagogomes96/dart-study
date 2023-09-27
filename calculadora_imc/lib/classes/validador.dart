class Validador {
  // Valida se o nome não é nulo e nem está vazio
  static bool validarNome(String? nome) {
    return nome != null && nome.isNotEmpty;
  }

  // Valida se o peso não é nulo e não é negativo
  static bool validarPeso(double? peso) {
    return peso != null && peso > 0;
  }

  // Valida se a altura não é nula e não é negativo
  static bool validarAltura(double? altura) {
    return altura != null && altura > 0;
  }
}
