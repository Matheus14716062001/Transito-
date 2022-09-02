import 'dart:js';

import 'package:flutter/material.dart';

import 'NavBar.dart';

class EstacoesPage extends StatelessWidget {
  const EstacoesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            drawer: const NavBar(),
            appBar: PreferredSize(
                preferredSize: const Size.fromHeight(55),
                child: AppBar(actions: [
                  SizedBox(width: 55, child: Image.asset('images/logoPage.png'))
                ])),
            body: Stack(children: [
              const Image(
                image: AssetImage('./assets/images/fundoPage.png'),
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              Row(children: [
                const SizedBox(width: 120),
                Image.asset(
                  'images/carro.png',
                  alignment: Alignment.topCenter,
                  height: 300,
                  width: 300,
                )
              ]),
              SizedBox(
                  height: 400,
                  child: Center(
                      child: Column(children: [
                    const SizedBox(height: 140),
                    const Text('Volkswagen, Fox/Motor: 1.6/Ano: 2014',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center),
                    const SizedBox(height: 20),
                    Container(
                        width: 400.0,
                        height: 20.0,
                        decoration: const BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            )),
                        child: const Center(
                            child: Text(
                          'Consumo médio de 15,8 kWh a cada 100 Km',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ))),
                    Row(children: const [
                      SizedBox(
                        width: 50,
                      ),
                      Text('Tempo de recarga:',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                          textAlign: TextAlign.center),
                    ]),
                    Row(children: const [
                      SizedBox(
                        width: 50,
                      ),
                      Text('Tomada comum:',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                          textAlign: TextAlign.center),
                    ]),
                    Row(children: [
                      const SizedBox(
                        width: 50,
                      ),
                      Container(
                          width: 150.0,
                          height: 20.0,
                          decoration: const BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0),
                              )),
                          child: const Text(
                            'Consumo médio de 15,8 kWh a cada 100 Km',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.right,
                          ))
                    ]),
                    const SizedBox(height: 10),
                    Row(children: const [
                      SizedBox(
                        width: 50,
                      ),
                      Text('Carregador wallbox de 11 Kw:',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                          textAlign: TextAlign.center),
                    ]),
                    Row(children: [
                      const SizedBox(
                        width: 50,
                      ),
                      Container(
                          width: 150.0,
                          height: 20.0,
                          decoration: const BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0),
                              )),
                          child: const Text(
                            'Consumo médio de 15,8 kWh a cada 100 Km',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.right,
                          ))
                    ]),
                    const SizedBox(height: 10),
                    Row(children: const [
                      SizedBox(
                        width: 50,
                      ),
                      Text('Carregador DC, ultrarrápido de corrente contínua:',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                          textAlign: TextAlign.center),
                    ]),
                    Row(children: [
                      const SizedBox(
                        width: 50,
                      ),
                      Container(
                          width: 150.0,
                          height: 20.0,
                          decoration: const BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0),
                              )),
                          child: const Text(
                            'Consumo médio de 15,8 kWh a cada 100 Km',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.right,
                          ))
                    ]),
                    SizedBox(height: 10),
                    Container(
                        width: 400.0,
                        height: 30.0,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 75, 255, 59),
                        ),
                        child: const Text(
                          'Consumo médio de 15,8 kWh a cada 100 Km',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ))
                  ]))),
            ])));
  }
}
