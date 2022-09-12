import 'package:flutter/material.dart';
import 'package:project/Widget/produto_estacoes.dart';
import 'package:project/Widget/produto_posto.dart';

Widget Contr(BuildContext comtext_, List<Map> lista, String tipo) {
  return ListView.separated(
    padding: const EdgeInsets.all(40.0),
    itemCount: lista.length,
    itemBuilder: ((context, index) {
      if (tipo == 'e') {
        return Produto_estacoes(comtext_, lista[index], index);
      } else {
        return Produto_posto(comtext_, lista[index], index);
      }
    }),
    separatorBuilder: (__, _) => const Divider(),
  );
}
