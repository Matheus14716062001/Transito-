import 'package:flutter/material.dart';

import '../Widget/button.dart';
import '../Widget/produto_estacoes.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle stylebutton_1 = ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        minimumSize: const Size(350, 60),
        primary: Colors.green);

    return MaterialApp(
        home: Scaffold(
      body: Stack(alignment: Alignment.bottomCenter, children: [
        const Image(
          image: AssetImage('./assets/images/homeScreen.png'),
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Positioned(
          bottom: 100.0,
          child: ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/PagamentoPage'),
            //'/EstacoesPages'
            ///HomePage
            style: stylebutton_1,
            child: const Text(
              "Login",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        Positioned(
          bottom: 100.0,
          child: ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/HomePage'),
            //'/EstacoesPages'
            ///HomePage
            style: stylebutton_1,
            child: const Text(
              "Login",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        Button(context)
      ]),
    ));
  }
}
