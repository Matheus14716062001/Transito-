import 'package:flutter/material.dart';

import 'NavBar.dart';

class FilaPage extends StatelessWidget {
  const FilaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            drawer: const NavBar(),
            appBar: PreferredSize(
                preferredSize: const Size.fromHeight(55),
                child: AppBar(actions: [
                  SizedBox(
                    width: 55,
                    child: Image.asset('./assets/images/logoPage.png'),
                  )
                ])),
            body: Stack(children: [
              const Image(
                image: AssetImage('./assets/images/fundoPage.png'),
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              Row(children: [
                const SizedBox(width: 100),
                Image.asset(
                  './assets/images/carro.png',
                  alignment: Alignment.topCenter,
                  height: 150,
                  width: 300,
                )
              ]),
            ])));
  }
}
