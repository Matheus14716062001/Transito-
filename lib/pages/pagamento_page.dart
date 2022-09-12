import 'package:flutter/material.dart';

import '../Widget/NavBar.dart';

class PagamentoPage extends StatelessWidget {
  const PagamentoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<double> w = [0.8, 0.6, 0.35, 0.20, 0.045, 0.04];
    const List<double> e = [0.05, 0.04, 0.03, 0.20];
    const List<double> f = [20, 15];
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
                  Container(
                      width: w[1] * MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * w[5],
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
                        'Ex: Gasolina',
                        style: TextStyle(color: Colors.black, fontSize: f[1]),
                        textAlign: TextAlign.center,
                      ))),
                  SizedBox(height: e[2] * MediaQuery.of(context).size.height),
                  Container(
                      width: w[1] * MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * w[5],
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
                        'Valor unitario:  6,05',
                        style: TextStyle(color: Colors.black, fontSize: f[1]),
                        textAlign: TextAlign.center,
                      ))),

                  SizedBox(height: e[0] * MediaQuery.of(context).size.height),
                  Container(
                    width: w[1] * MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * w[5],
                    decoration: const BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        )),
                    child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'QUANTIDADE DESEJADA:',
                          border: OutlineInputBorder(),
                          errorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 30)),
                        ),
                        onSaved: (String? value) {
                          // This optional block of code can be used to run
                          // code when the user saves the form.
                        },
                        //controller:,
                        validator: (String? value) {
                          if ((value == null)) {
                            return 'invalido';
                          }
                        }),
                  ),
                  SizedBox(height: e[2] * MediaQuery.of(context).size.height),
                  Container(
                      width: w[1] * MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * w[5],
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
                        style: TextStyle(color: Colors.black, fontSize: f[1]),
                        textAlign: TextAlign.center,
                      ))),
                  SizedBox(height: e[0] * MediaQuery.of(context).size.height),
                  Container(
                      width: w[0] * MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * w[4],
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          )),
                      child: Center(
                          child: Text(
                        'SELECIONE O TIPO DE PAGAMENTO',
                        style: TextStyle(color: Colors.black, fontSize: f[0]),
                        textAlign: TextAlign.center,
                      ))),
                  SizedBox(height: e[1] * MediaQuery.of(context).size.height),
                  ////////////////////////
                  Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: w[3] * MediaQuery.of(context).size.height,
                              width: w[2] * MediaQuery.of(context).size.width,
                              child: ColoredBox(
                                  color: Colors.white,
                                  child: SizedBox(
                                      width: w[2] *
                                          MediaQuery.of(context).size.width,
                                      height: w[3] *
                                          MediaQuery.of(context).size.height,
                                      child: IconButton(
                                        icon: Image.asset(
                                            './assets/images/eletrico.png'),
                                        iconSize: 90,
                                        onPressed: () => Navigator.pushNamed(
                                            context, '/EstacoesPage'),
                                      )))),
                          SizedBox(
                            width:
                                e[3] * 0.5 * MediaQuery.of(context).size.width,
                          ),
                          SizedBox(
                              height: w[3] * MediaQuery.of(context).size.height,
                              width: w[2] * MediaQuery.of(context).size.width,
                              child: ColoredBox(
                                  color: Colors.white,
                                  child: SizedBox(
                                      width: w[2] *
                                          MediaQuery.of(context).size.width,
                                      height: w[3] *
                                          MediaQuery.of(context).size.height,
                                      child: IconButton(
                                        icon: Image.asset(
                                            './assets/images/eletrico.png'),
                                        iconSize: 90,
                                        onPressed: () => Navigator.pushNamed(
                                            context, '/EstacoesPage'),
                                      )))),
                        ]),
                  ),
                  SizedBox(height: e[1] * MediaQuery.of(context).size.height),
                  Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                              height: w[3] * MediaQuery.of(context).size.height,
                              width: w[2] * MediaQuery.of(context).size.width,
                              child: ColoredBox(
                                  color: Colors.white,
                                  child: SizedBox(
                                      width: w[2] *
                                          MediaQuery.of(context).size.width,
                                      height: w[3] *
                                          MediaQuery.of(context).size.height,
                                      child: IconButton(
                                        icon: Image.asset(
                                            './assets/images/eletrico.png'),
                                        iconSize: 90,
                                        onPressed: () => Navigator.pushNamed(
                                            context, '/EstacoesPage'),
                                      )))),
                          SizedBox(
                            width:
                                e[3] * 0.5 * MediaQuery.of(context).size.width,
                          ),
                          SizedBox(
                              height: w[3] * MediaQuery.of(context).size.height,
                              width: w[2] * MediaQuery.of(context).size.width,
                              child: ColoredBox(
                                  color: Colors.white,
                                  child: SizedBox(
                                      width: w[2] *
                                          MediaQuery.of(context).size.width,
                                      height: w[3] *
                                          MediaQuery.of(context).size.height,
                                      child: IconButton(
                                        icon: Image.asset(
                                            './assets/images/eletrico.png'),
                                        iconSize: 90,
                                        onPressed: () => Navigator.pushNamed(
                                            context, '/EstacoesPage'),
                                      )))),
                        ]),
                  ),
                ],
              ),
            )));
  }
}
