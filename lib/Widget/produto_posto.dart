import 'package:flutter/material.dart';
import 'package:project/Widget/icon.dart';
import 'package:project/Widget/text_w.dart';
import '../Modules/cor.dart';
import '../Modules/posto.dart';
import 'estrela.dart';

class produtoposto extends StatelessWidget {
  BuildContext context_;
  Posto lista;

  produtoposto({
    super.key,
    required this.context_,
    required this.lista,
  });
  static const List<double> I = [25, 20];
  static const List<double> fo = [14, 12];

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
                Row(children: [
                  Text_w(' ${lista.nome}', fo[0]),
                  Estrela(context, lista.estrela)
                ]),
                SizedBox(
                  width: 0.43 * MediaQuery.of(context).size.width,
                  child: Text_w(' ${lista.endereco}', fo[1]),
                ),
                Container(
                  width: 0.43 * MediaQuery.of(context).size.width,
                  alignment: Alignment.topLeft,
                  child: iconsalva(
                    lista: lista,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 0.03 * MediaQuery.of(context).size.width,
          ),
          Container(
            width: 0.25 * MediaQuery.of(context).size.width,
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text_w('Gasolina: , ${lista.gasolina}', fo[1]),
                SizedBox(height: 0.03 * MediaQuery.of(context).size.height),
                Text_w('Gasolina Adtv: ${lista.gasolinaaditivada}', fo[1]),
                SizedBox(height: 0.03 * MediaQuery.of(context).size.height),
                Text_w('Gás: ${lista.gas}', fo[1]),
                SizedBox(height: 0.03 * MediaQuery.of(context).size.height),
                Text_w('Álcool: ${lista.alcool}', fo[1]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
