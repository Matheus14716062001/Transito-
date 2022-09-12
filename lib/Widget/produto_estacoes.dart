// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:project/Widget/text_w.dart';

import 'button.dart';
import 'estrela.dart';

Widget Produto_estacoes(BuildContext context, Map lista, int index) {
  const List<double> I = [25, 20];
  const double fo = 15;

  return Container(
      height: 85,
      width: 0.8 * MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: Color.fromARGB(255, 54, 33, 243)),
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                IconButton(
                    icon: Icon(Icons.volume_up, size: I[1]), onPressed: () {}),
                Estrela(context, lista['Estrela'])
              ]),
              Text_w(' ${lista['endereco']}', fo),
            ],
          ),
          Text_w('kWh ${lista['kWh']}', fo),
          Button(context)
        ],
      )));
}
