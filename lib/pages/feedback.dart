import 'package:flutter/material.dart';

import '../Widget/NavBar.dart';
import '../Widget/text_c.dart';

class FeedbackPage extends StatelessWidget {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<double> w = [0.40, 0.20, 0.04];
    const List<double> e = [0.04, 0.025];
    const List<double> f = [20];
    const List<Color> cor = [
      Color(0xFF42A5F5),
      Color(0xffFEF44E),
      Color(0xFF61FD7D),
      Color(0xCCA2B3C1)
    ];

    final ButtonStyle stylebutton_1 = ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        textStyle: TextStyle(fontSize: f[0], fontWeight: FontWeight.bold),
        minimumSize: const Size(200, 45),
        primary: cor[2]);
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
            body: SingleChildScrollView(
                child: Container(
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
                    './assets/images/carro.png',
                    alignment: Alignment.topCenter,
                    height: w[1] * MediaQuery.of(context).size.height,
                    width: 0.8 * MediaQuery.of(context).size.width,
                  ),
                  Text_c(context, 'Feedback', f[0], w[2], 0.8, cor[0]),
                  SizedBox(height: e[1] * MediaQuery.of(context).size.height),
                  Container(
                    height: w[1] * MediaQuery.of(context).size.height,
                    width: 0.8 * MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: cor[3]),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        labelText: 'Número do cartão',
                        border: OutlineInputBorder(),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blue, width: 30)),
                      ),
                      onSaved: (String? value) {
                        // This optional block of code can be used to run
                        // code when the user saves the form.
                      },
                      //controller: ,
                      validator: (String? value) {
                        //if ((value == null) || (validador == false)) {
                        // return 'Email invalida';
                        //}
                      },
                    ),
                  ),
                  SizedBox(height: e[0] * MediaQuery.of(context).size.height),
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/MapaPage'),
                    style: stylebutton_1,
                    child: const Text(
                      "Enviar",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(height: e[1] * MediaQuery.of(context).size.height),
                  Text_c(context, 'Ajuda', f[0], w[2], 0.8, cor[0]),
                  SizedBox(height: e[1] * MediaQuery.of(context).size.height),
                  Center(
                      child: Row(
                    children: [
                      SizedBox(width: 0.1 * MediaQuery.of(context).size.width),
                      const Icon(Icons.abc, size: 35),
                      Text_c(context, 'notransito@gmail.com', f[0], w[2], 0.71,
                          cor[0]),
                    ],
                  ))
                ],
              ),
            ))));
  }
}
