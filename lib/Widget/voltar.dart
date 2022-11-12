import 'package:flutter/material.dart';

Widget voltar(BuildContext context) {
  final ButtonStyle stylebutton_1 = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      backgroundColor: Colors.transparent,
      textStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      minimumSize: const Size(60, 30));
  return Row(
    children: [
      ElevatedButton.icon(
          style: stylebutton_1,
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
          label: const Text('voltar'))
    ],
  );
}
