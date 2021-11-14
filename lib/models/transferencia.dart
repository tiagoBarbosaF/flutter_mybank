class Transferencia {
  final String name;
  final double valor;
  final int numeroConta;

  Transferencia(this.name, this.valor, this.numeroConta);

  @override
  String toString() {
    return 'Transferencia{Titular: $name, Número da Conta: $numeroConta, Valor: $valor}';
  }
}
