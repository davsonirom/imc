import 'package:imc/imc.dart';
import 'package:test/test.dart';

void main() {
  test('calculando o IMC', () {
    expect(IMC.calcularImc(85, 1.89), 23.79552644102909);
  });
}
