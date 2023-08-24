class Pessoa {
  final String _nome;
  final double _peso;
  final double _altua;

  Pessoa({
    required nome,
    required peso,
    required altua,
  })  : _nome = nome,
        _peso = peso,
        _altua = altua;

  String getNome() {
    return _nome;
  }

  double getPeso() {
    return _peso;
  }

  double getAltura() {
    return _altua;
  }

  @override
  String toString() {
    return "{'nome' : $_nome, 'peso' : $_peso, 'altura' : $_altua}";
  }
}
