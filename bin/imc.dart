import 'package:imc/imc.dart';
import 'package:imc/pessoa.dart';
import 'package:imc/utils/read_console.dart';

void main(List<String> arguments) {
  print('====================================');
  print('Calculadora Índice de Massa Corporal');
  print('====================================');

  //? nome
  String nome = inputTerminal('Digite seu nome');
  print(nome);
  //? peso
  String peso = inputTerminal(
      'Digite seu peso (use ponto no lugar da virgula. ex. 85.4)');
  //? altura
  String altura = inputTerminal(
      'Digite sua altura (use ponto no lugar da virgula. ex. 1.80)');

  Pessoa pessoinha = Pessoa(
      nome: nome,
      peso: converteEmDouble(peso),
      altua: converteEmDouble(altura));
  print(pessoinha);

  //! calcular o IMC
  double imc = IMC.calcularImc(pessoinha.getPeso(), pessoinha.getAltura());

  //! classificar o IMC
  String minhaGordurinha = IMC.classicacao(imc);

  //* resultados
  print("-" * 80);
  print('índice de massa corporal'.toUpperCase());
  print('Nome: ${pessoinha.getNome().toUpperCase()}');
  print("IMC: ${imc.toStringAsFixed(2)} | Classificação: $minhaGordurinha");
  print("=" * 80);
}
