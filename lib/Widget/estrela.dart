import 'package:flutter/material.dart';

Widget Estrela(BuildContext context, int n_estrela) {
  final List<Widget> estrela_prod = [];
  while (estrela_prod.length <= (n_estrela - 1)) {
    const Widget widgettemp =
        Image(image: AssetImage('./assets/images/Estrela.png'));
    estrela_prod.add(widgettemp);
  }
  while (estrela_prod.length <= 5) {
    estrela_prod.add(const SizedBox(width: 0));
  }

  return SizedBox(
      width: 0.2 * MediaQuery.of(context).size.width,
      height: 40,
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        estrela_prod[0],
        const SizedBox(width: 2),
        estrela_prod[1],
        const SizedBox(width: 2),
        estrela_prod[2],
        const SizedBox(width: 2),
        estrela_prod[3],
        const SizedBox(width: 2),
        estrela_prod[4],
      ]));
}
