import 'package:flutter/material.dart';
import 'package:project/Widget/text_w.dart';

import 'estrela.dart';

Widget Produto_posto(BuildContext context, Map produto, int index) {
  const List<double> I = [20, 25];
  const double f = 13;

  return Container(
      height: 85,
      width: 0.8 * MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: Color.fromARGB(255, 54, 33, 243)),
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                IconButton(
                    icon: Icon(Icons.volume_up, size: I[1]), onPressed: () {}),
                Estrela(context, produto['Estrela'])
              ]),
              Text_w('${produto['endereco']}', f),
            ],
          ),
          Column(
            children: [
              const SizedBox(height: 5),
              Text_w('Gasolina: , ${produto['Gasolina']}', f),
              Text_w('Gasolina Aditivada: ${produto['gasolina_aditivada']}', f),
              Text_w('Gás: ${produto['Gas']}', f),
              Text_w('Álcool: ${produto['alcool']}', f),
            ],
          ),
          IconButton(
              icon: Icon(Icons.volume_up, size: I[0]),
              onPressed: () {
                Navigator.pushNamed(context, '/PagamentoPage');
              }),
        ],
      )));
}
