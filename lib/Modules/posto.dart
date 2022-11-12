class Posto {
  String endereco;
  String gasolina;
  double gasolinaint;
  String gasolinaaditivada;
  double gasolinaaditivadaint;
  String gas;
  double gasint;
  String alcool;
  double alcoolint;
  String nome;
  int estrela;

  int latitude;
  int longitude;
  bool salvo;
  Posto({
    required this.endereco,
    required this.estrela,
    required this.latitude,
    required this.longitude,
    required this.nome,
    required this.salvo,
    required this.gasolina,
    required this.gasolinaint,
    required this.gasolinaaditivada,
    required this.gasolinaaditivadaint,
    required this.gas,
    required this.gasint,
    required this.alcool,
    required this.alcoolint,
  });
}
