import 'dart:html';
import 'dart:js';

import 'package:flutter/material.dart';

import 'NavBar.dart';

class EstacoesPage extends StatelessWidget {
  const EstacoesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map> lista = [
      {'endereco': 'Av. Dom Hélder Câmara, 1', 'kWh': '1,25', 'Estrela': '5'},
      {'endereco': 'Av. Dom Hélder Câmara, 2', 'kWh': '1,25', 'Estrela': '5'},
      {'endereco': 'Av. Dom Hélder Câmara, 3', 'kWh': '1,25', 'Estrela': '5'},
      {'endereco': 'Av. Dom Hélder Câmara, 4', 'kWh': '1,25', 'Estrela': '5'},
      {'endereco': 'Av. Dom Hélder Câmara, 5', 'kWh': '1,25', 'Estrela': '5'},
      {'endereco': 'Av. Dom Hélder Câmara, 6', 'kWh': '1,25', 'Estrela': '5'}
    ];
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
                const SizedBox(width: 100),
                Image.asset(
                  'images/carro.png',
                  alignment: Alignment.topCenter,
                  height: 150,
                  width: 300,
                )
              ]),
              Expanded(
                  flex: 11,
                  child: Center(
                      child: Column(children: [
                    const SizedBox(height: 100),
                    const Text('Volkswagen, Fox/Motor: 1.6/Ano: 2014',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                        textAlign: TextAlign.center),
                    const SizedBox(height: 15),
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
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0),
                              )),
                          child: const Text(
                            '20 Km/h',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
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
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0),
                              )),
                          child: const Text(
                            '40 Km/h',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
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
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0),
                              )),
                          child: const Text(
                            '320 Km/h',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          ))
                    ]),
                    const SizedBox(height: 10),
                    Container(
                        width: 400.0,
                        height: 30.0,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 75, 255, 59),
                        ),
                        child: const Text(
                          'ESTAÇÕES MAIS PERTO',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        )),

                    Expanded(
                        flex: 10,
                        child: ListView.separated(
                          padding: const EdgeInsets.all(40.0),
                          itemCount: lista.length,
                          itemBuilder: ((context, index) {
                            return Produto(lista[index]);
                          }),
                          separatorBuilder: (__, _) => const Divider(),
                        )) //)
                  ]))),
            ])));
  }
}

Widget Produto(Map produto) {
  return Container(
      width: 250.0,
      height: 55.0,
      decoration: const BoxDecoration(color: Color.fromARGB(255, 54, 33, 243)),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                IconButton(
                    icon: const Icon(Icons.volume_up, size: 15),
                    onPressed: () {}),
                const Image(image: AssetImage('images/Estrela.png')),
                const Image(image: AssetImage('images/Estrela.png')),
                const Image(image: AssetImage('images/Estrela.png')),
                const Image(image: AssetImage('images/Estrela.png')),
                const Image(image: AssetImage('images/Estrela.png'))
              ]),
              Text(
                ' ${produto['endereco']}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 80,
          ),
          Text(
            'kWh ${produto['kWh']}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          ),
          const SizedBox(
            width: 80,
          ),
          IconButton(
              icon: const Icon(Icons.volume_up, size: 15), onPressed: () {}),
        ],
      ));
}
