import 'package:flutter/material.dart';
import 'package:project/Modules/dado_posto.dart';
import 'package:project/Widget/produto_estacoes.dart';
import 'package:project/Widget/produto_posto.dart';

import '../Modules/dado_estacoes.dart';

class Contr extends StatelessWidget {
  BuildContext context_;
  //List<Map> lista;
  String tipo;
  Contr({
    required this.tipo,
    required this.context_,
  });
  @override
  Widget build(BuildContext context) {
    if (tipo == 'e') {
      return ListView.separated(
        padding: const EdgeInsets.all(40.0),
        itemCount: estacoes.length,
        itemBuilder: ((context, index) {
          return produtoestacoes(
            context_: context_,
            lista: estacoes[index],
          );
        }),
        separatorBuilder: (__, _) => const Divider(),
      );
    } else {
      return ListView.separated(
        padding: const EdgeInsets.all(40.0),
        itemCount: estacoes.length,
        itemBuilder: ((context, index) {
          return produtoposto(
            context_: context_,
            lista: posto[index],
          );
        }),
        separatorBuilder: (__, _) => const Divider(),
      );
    }
  }
}
