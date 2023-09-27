import 'package:calculadora_imc/classes/pessoa.dart';
import 'package:calculadora_imc/classes/validador.dart';
import 'package:test/test.dart';

void main() {
  group('Teste da classe Pessoa', () {
    test('Teste de cálculo de IMC', () {
      // Instanciando uma nova pessoa
      Pessoa pessoa = Pessoa(nome: "Fulano", peso: 65, altura: 1.75);

      // Calculando o IMC
      expect(pessoa.getIMC(), closeTo(21.22, 0.01));
    });

    test('Teste de classificação de IMC', () {
      // Instanciando uma nova pessoa
      Pessoa pessoa = Pessoa(nome: 'Bob', peso: 80.0, altura: 1.80);

      // Calculando o IMC
      expect(pessoa.getClassificacaoIMC(25.0), 'sobrepeso');
    });
  });

  group('Teste da classe Validador', () {
    test('Teste de validação de nome', () {
      expect(Validador.validarNome('Fulano'), true);
      expect(Validador.validarNome(null), false);
      expect(Validador.validarNome(''), false);
    });

    test('Teste de validação de peso', () {
      expect(Validador.validarPeso(67.84), true);
      expect(Validador.validarPeso(null), false);
      expect(Validador.validarPeso(-10.4), false);
    });

    test('Teste de validação de altura', () {
      expect(Validador.validarAltura(1.80), true);
      expect(Validador.validarAltura(null), false);
      expect(Validador.validarAltura(-1.40), false);
    });
  });
}
