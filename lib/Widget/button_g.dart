import 'package:flutter/material.dart';

class Button_g extends StatelessWidget {
  BuildContext context_;
  String tex;
  String navegacao;
  Color cor;
  Button_g(
      {super.key,
      required this.context_,
      required this.tex,
      required this.navegacao,
      required this.cor});
  @override
  Widget build(BuildContext context) {
    final ButtonStyle stylebutton = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      backgroundColor: cor,
      textStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      elevation: 5,
      minimumSize: Size(0.8 * MediaQuery.of(context).size.width, 45),
    );
    //MediaQuery.of(context).size.height,
    // MediaQuery.of(context).size.width,
    return Column(
      children: [
        ElevatedButton(
          onPressed: () => Navigator.pushNamed(context_, navegacao),
          style: stylebutton,
          child: Text(
            tex,
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
