import 'package:flutter/material.dart';

Widget Text_c(BuildContext context, String text, double f, double he, double wi,
    Color color) {
  return Container(
    width: wi * MediaQuery.of(context).size.width,
    height: he * MediaQuery.of(context).size.height,
    decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
          bottomLeft: Radius.circular(20.0),
          bottomRight: Radius.circular(20.0),
        )),
    child: Center(
      child: Text(
        '${text}',
        style: TextStyle(color: Colors.black, fontSize: f),
        textAlign: TextAlign.center,
      ),
    ),
  );
}
