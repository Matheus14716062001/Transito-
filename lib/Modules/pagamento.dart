class Pagamento {
  String numero;
  int codigodeseguranca;
  String nome;
  String validade;
  int tipo;

  Pagamento(
      {required this.nome,
      required this.numero,
      required this.codigodeseguranca,
      required this.tipo,
      required this.validade});
}
