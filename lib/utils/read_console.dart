import 'dart:io';
import 'dart:convert';

String inputTerminal(String? mensagem) {
  stdout.write('$mensagem: ');
  String input = stdin.readLineSync(encoding: utf8) ?? "";
  return input;
}

double converteEmDouble(String input) {
  try {
    double valor = double.parse(input);
    return valor;
  } catch (e) {
    print('Para o peso e altura são aceito apenas números');
    exit(0);
  }
}
