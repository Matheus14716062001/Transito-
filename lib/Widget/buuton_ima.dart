import 'package:flutter/material.dart';

class Button_ima extends StatelessWidget {
  String image;
  Color cor;
  int w;
  Button_ima({
    required this.image,
    required this.cor,
    required this.w,
  });
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: cor,
      child: SizedBox(
        width: w * MediaQuery.of(context).size.width / 10,
        height: w * MediaQuery.of(context).size.width / 10,
        child: IconButton(
          icon: Image.asset(image),
          iconSize: 90,
          onPressed: () => Navigator.pushNamed(context, '/VisaPage'),
        ),
      ),
    );
  }
}
