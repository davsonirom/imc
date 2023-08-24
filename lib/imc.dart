import 'dart:math';

abstract class IMC {
  static double calcularImc(double peso, double altua) {
    double imc = peso / pow(altua, 2);
    return imc;
  }

  static precisaoDecimal(double imc) => imc.toStringAsPrecision(2);

  static String classicacao(double imc) {
    String classificadoComo = "";
    if (imc < 18.9) {
      classificadoComo = "Abaixo do peso";
    } else if (imc < 24.9) {
      classificadoComo = "Peso Ideal (continue com a boa saúde!)";
    } else if (imc < 29.9) {
      classificadoComo = "Levemente acima do peso";
    } else if (imc < 34.9) {
      classificadoComo = "Obesidade grau I";
    } else if (imc < 39.9) {
      classificadoComo = "Obesidade grau II (severa)";
    } else if (imc > 40) {
      classificadoComo = "Obesidade III (mórbida)";
    }
    return classificadoComo;
  }
}
