import 'package:flutter/material.dart';
import 'package:project/Modules/pagamento.dart';
import 'package:project/Widget/text_w.dart';
import '../Modules/cor.dart';

class Seltpagamento extends StatelessWidget {
  BuildContext context_;

  Pagamento pag;

  Seltpagamento({
    super.key,
    required this.context_,
    required this.pag,
  });
  static const List<double> I = [25, 20];
  static const List<double> fo = [20, 12];
  Widget tipo = const SizedBox(
    width: 0.001,
  );
  Widget Tipo_cartao(BuildContext context) {
    if (pag.tipo == 0) {
      return tipo = Image.asset(
        './assets/images/visa.png',
        alignment: Alignment.topCenter,
        //height: w[4] * MediaQuery.of(context).size.height,
        width: 0.8 * MediaQuery.of(context).size.width,
      );
    } else {
      return tipo = Image.asset(
        './assets/images/visa.png',
        alignment: Alignment.topCenter,
        //height: w[4] * MediaQuery.of(context).size.height,
        width: 0.8 * MediaQuery.of(context).size.width,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle stylebutton = ElevatedButton.styleFrom(
      backgroundColor: cor[4],
      textStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      elevation: 5,
      minimumSize: Size(0.8 * MediaQuery.of(context).size.width, 85),
    );

    return ElevatedButton(
      onPressed: () => Navigator.pushNamed(context_, '/MapaPage'),
      style: stylebutton,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 0.43 * MediaQuery.of(context).size.width,
            alignment: Alignment.topLeft,
            child: Column(
              children: [
                SizedBox(
                  width: 0.43 * MediaQuery.of(context).size.width,
                  child: Text_w('Nome: ${pag.nome}', fo[1]),
                ),
                SizedBox(
                  width: 0.43 * MediaQuery.of(context).size.width,
                  child: Text_w('Número do Cartão: ${pag.numero}', fo[1]),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 0.03 * MediaQuery.of(context_).size.width,
          ),
          Container(
            width: 0.25 * MediaQuery.of(context_).size.width,
            alignment: Alignment.centerLeft,
            child: Tipo_cartao(context),
          )
        ],
      ),
    );
  }
}
