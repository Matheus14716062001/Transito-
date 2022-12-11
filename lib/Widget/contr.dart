import 'package:flutter/material.dart';
import 'package:project/Modules/dado_pagamento.dart';
import 'package:project/Modules/dado_posto.dart';
import 'package:project/Modules/estacoes.dart';
import 'package:project/Modules/posto.dart';
import 'package:project/Widget/pagamento_contr.dart';
import 'package:project/Widget/produto_estacoes.dart';
import 'package:project/Widget/produto_posto.dart';

import '../Modules/dado_estacoes.dart';

class Contr extends StatelessWidget {
  BuildContext context_;
  String tipo;
  Contr({
    required this.tipo,
    required this.context_,
  });

  @override
  Widget build(BuildContext context) {
    Posto list_post;
    Estacoes list_est;
    if (tipo == 'e') {
      return ListView.separated(
        padding: const EdgeInsets.all(20.0),
        itemCount: estacoes.length,
        itemBuilder: ((context, index) {
          return produtoestacoes(
            context_: context_,
            lista: estacoes[index],
          );
        }),
        separatorBuilder: (__, _) => const Divider(),
      );
    } else if (tipo == 'pa') {
      return ListView.separated(
        padding: const EdgeInsets.all(20.0),
        itemCount: pagamento.length,
        itemBuilder: ((context, index) {
          return Seltpagamento(context_: context_, pag: pagamento[index]);
        }),
        separatorBuilder: (__, _) => const Divider(),
      );
    } else if (tipo == 'ps') {
      return ListView.separated(
        padding: const EdgeInsets.all(20.0),
        itemCount: posto.length,
        itemBuilder: ((context, index) {
          list_post = posto[index];
          list_est = estacoes[index];

          if (index < estacoes.length) {
            if (list_post.salvo == true) {
              if (list_est.salvo == true) {
                return Column(
                  children: [
                    produtoestacoes(
                      context_: context_,
                      lista: estacoes[index],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    produtoposto(
                      context_: context_,
                      lista: posto[index],
                    )
                  ],
                );
              } else {
                return produtoposto(
                  context_: context_,
                  lista: posto[index],
                );
              }
            } else if (list_est.salvo == true) {
              return produtoestacoes(
                context_: context_,
                lista: estacoes[index],
              );
            } else {
              return const SizedBox(
                height: 0,
              );
            }
          } else if (list_post.salvo == true) {
            return produtoposto(
              context_: context_,
              lista: posto[index],
            );
          } else {
            return const SizedBox(
              height: 0,
            );
          }
        }),
        separatorBuilder: (__, _) => const Divider(),
      );
    } else {
      return ListView.separated(
        padding: const EdgeInsets.all(20.0),
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
