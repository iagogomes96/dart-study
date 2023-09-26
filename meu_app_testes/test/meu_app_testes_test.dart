import 'package:meu_app_testes/meu_app_testes.dart' as app;
import 'package:test/test.dart';

void main() {
  test('Calcula o valor do produto com desconto sem porcentagem', () {
    expect(app.calcularDesconto(1000, 150, false), 850);
  });

  // Espera um erro do tipo ArgumentError
  test(
      'Calcula o valor do produto com desconto sem porcentagem com valor do produto 0',
      () {
    expect(() => app.calcularDesconto(0, 150, false),
        throwsA(TypeMatcher<ArgumentError>()));
  });

  test('Calcula o valor do produto com desconto com porcentagem', () {
    expect(app.calcularDesconto(1000, 20, true), 800);
  });

  test('Calcula o valor do produto com desconto com porcentagem com desconto 0',
      () {
    expect(() => app.calcularDesconto(1000, 0, true),
        throwsA(TypeMatcher<ArgumentError>()));
  });

  group("Calcula o valor do produto com desconto: ", () {
    var valuesToTest = {
      {'valor': 1000, 'desconto': 150, 'percentual': false}: 850,
      {'valor': 1000, 'desconto': 15, 'percentual': true}: 850,
      {'valor': 1000, 'desconto': 500, 'percentual': false}: 500,
      {'valor': 500, 'desconto': 10, 'percentual': true}: 450,
    };
    valuesToTest.forEach((values, expected) {
      test('Entrada: $values Esperado: $expected', () {
        expect(
            app.calcularDesconto(
                double.parse(values["valor"].toString()),
                double.parse(values['desconto'].toString()),
                values['percentual'] == true),
            equals(expected));
      });
    });
  });
}
