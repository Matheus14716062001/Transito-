import 'package:flutter/material.dart';

import '../Widget/NavBar.dart';

class PixPage extends StatelessWidget {
  const PixPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<double> w = [0.40, 0.20, 0.04];
    const List<double> e = [0.05, 0.005];
    const List<double> f = [20];
    final ButtonStyle stylebutton_1 = ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        minimumSize: const Size(350, 60),
        primary: Colors.green);
    return MaterialApp(
        home: Scaffold(
            drawer: NavBar(context),
            appBar: PreferredSize(
                preferredSize: const Size.fromHeight(55),
                child: AppBar(actions: [
                  SizedBox(
                    width: 55,
                    child: Image.asset('./assets/images/logoPage.png'),
                  )
                ])),
            body: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('./assets/images/fundoPage.png'),
                fit: BoxFit.cover,
              )),
              child: Column(
                children: [
                  SizedBox(height: e[0] * MediaQuery.of(context).size.height),
                  Image.asset(
                    './assets/images/pix.png',
                    alignment: Alignment.topCenter,
                    height: w[1] * MediaQuery.of(context).size.height,
                    width: 0.8 * MediaQuery.of(context).size.width,
                  ),
                  Container(
                      width: 0.8 * MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * w[2],
                      decoration: const BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          )),
                      child: Center(
                          child: Text(
                        'Valor Total :  181,50',
                        style: TextStyle(color: Colors.black, fontSize: f[0]),
                        textAlign: TextAlign.center,
                      ))),
                  SizedBox(height: e[0] * MediaQuery.of(context).size.height),
                  Image.asset(
                    './assets/images/Qr.png',
                    alignment: Alignment.topCenter,
                    height: w[0] * MediaQuery.of(context).size.height,
                    width: 0.8 * MediaQuery.of(context).size.width,
                  ),
                  SizedBox(height: e[0] * MediaQuery.of(context).size.height),
                  ElevatedButton(
                    onPressed: () =>
                        Navigator.pushNamed(context, '/PagamentoPage'),
                    style: stylebutton_1,
                    child: const Text(
                      "Login",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            )));
  }
}
