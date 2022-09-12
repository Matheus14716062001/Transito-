import 'package:flutter/material.dart';

Widget Text_c2(BuildContext context, String text, double f, double he,
    double wi, Color color) {
  return Container(
      width: wi * MediaQuery.of(context).size.width,
      height: he * MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: color,
      ),
      child: Center(
          child: Text(
        '${text}',
        style: TextStyle(color: Colors.black, fontSize: f),
        textAlign: TextAlign.center,
      )));
}
