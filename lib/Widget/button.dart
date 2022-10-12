import 'package:flutter/material.dart';

Widget Button(BuildContext context) {
  const double I = 25;
  return IconButton(
    icon: const Icon(Icons.ac_unit, size: I),
    onPressed: () {
      Navigator.pushNamed(context, '/PagamentoPage');
    },
  );
}
