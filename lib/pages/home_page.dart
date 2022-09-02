import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle stylebutton_1 = ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        minimumSize: const Size(350, 60),
        primary: Colors.green);

    final ButtonStyle stylebutton_2 = ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        textStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        elevation: 5,
        minimumSize: const Size(350, 60),
        primary: Colors.yellow);

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
            onPressed: () => Navigator.pushNamed(context, '/LoginPage'),
            style: stylebutton_1,
            child: const Text(
              "Login",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        Positioned(
          bottom: 30.0,
          child: ElevatedButton(
            onPressed: () => Navigator.pushNamed(context, '/CadastrarPage'),
            style: stylebutton_2,
            child: const Text(
              "Cadastrar",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ]),
    ));
  }
}
