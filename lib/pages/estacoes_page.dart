import 'package:flutter/material.dart';

import 'NavBar.dart';

class EstacoesPage extends StatelessWidget {
  const EstacoesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<double> w = [0.15, 0.035, 0.03];
    const List<double> e = [0.01, 0.005];
    const List<double> f = [16, 17, 20]; //[25, 20, 15]

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
            drawer: Drawer(
                child: ListView(
              padding: EdgeInsets.zero,
              children: [
                UserAccountsDrawerHeader(
                  accountName: const Text('Nome'),
                  accountEmail: const Text('Email'),
                  currentAccountPicture: CircleAvatar(
                      child: Image.asset('./assets/images/logoPage.png')),
                ),
                ListTile(
                  leading: const Icon(Icons.favorite),
                  title: const Text('Voltar'),
                  onTap: () => {Navigator.pop(context)},
                ),
                ListTile(
                  leading: const Icon(Icons.favorite),
                  title: const Text('Favorito'),
                  onTap: () => {},
                ),
                ListTile(
                  leading: const Icon(Icons.favorite),
                  title: const Text('Favorito'),
                  onTap: () => {},
                ),
                ListTile(
                  leading: const Icon(Icons.favorite),
                  title: const Text('Favorito'),
                  onTap: () => {},
                ),
                ListTile(
                  leading: const Icon(Icons.favorite),
                  title: const Text('Favorito'),
                  onTap: () => {},
                ),
                ListTile(
                  leading: const Icon(Icons.favorite),
                  title: const Text('Favorito'),
                  onTap: () => {},
                ),
              ],
            )),
            appBar: PreferredSize(
                preferredSize: const Size.fromHeight(55),
                child: AppBar(actions: [
                  SizedBox(
                      width: 55,
                      child: Image.asset('./assets/images/logoPage.png'))
                ])),
            body: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('./assets/images/fundoPage.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                    child: Column(children: [
                  Row(children: [
                    const SizedBox(width: 50),
                    Image.asset(
                      './assets/images/carro.png',
                      alignment: Alignment.topCenter,
                      height: w[0] * MediaQuery.of(context).size.height,
                      width: 0.8 * MediaQuery.of(context).size.width,
                    )
                  ]),
                  Text('Volkswagen, Fox/Motor: 1.6/Ano: 2014',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: f[1],
                      ),
                      textAlign: TextAlign.center),
                  SizedBox(height: e[0] * MediaQuery.of(context).size.height),
                  Container(
                      width: 0.8 * MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * w[1],
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
                        'Consumo médio de 15,8 kWh a cada 100 Km',
                        style: TextStyle(color: Colors.black, fontSize: f[2]),
                        textAlign: TextAlign.center,
                      ))),
                  Row(children: [
                    SizedBox(
                      width: 0.1 * MediaQuery.of(context).size.width,
                    ),
                    Text('Tempo de recarga:',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: f[0],
                        ),
                        textAlign: TextAlign.center),
                  ]),
                  Row(children: [
                    SizedBox(
                      width: 0.1 * MediaQuery.of(context).size.width,
                    ),
                    Text('Tomada comum:',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: f[0],
                        ),
                        textAlign: TextAlign.center),
                  ]),
                  Row(children: [
                    SizedBox(
                      width: 0.1 * MediaQuery.of(context).size.width,
                    ),
                    Container(
                        width: 0.4 * MediaQuery.of(context).size.width,
                        height: w[1] * MediaQuery.of(context).size.height,
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
                  Row(children: [
                    SizedBox(
                      width: 0.1 * MediaQuery.of(context).size.width,
                    ),
                    Text('Carregador wallbox de 11 Kw:',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: f[0],
                        ),
                        textAlign: TextAlign.center),
                  ]),
                  Row(children: [
                    SizedBox(
                      width: 0.1 * MediaQuery.of(context).size.width,
                    ),
                    Container(
                        width: 0.4 * MediaQuery.of(context).size.width,
                        height: w[1] * MediaQuery.of(context).size.height,
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
                  SizedBox(height: e[1] * MediaQuery.of(context).size.height),
                  Row(children: [
                    SizedBox(
                      width: 0.1 * MediaQuery.of(context).size.width,
                    ),
                    Text('Carregador DC, ultrarrápido de corrente contínua:',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: f[0],
                        ),
                        textAlign: TextAlign.center),
                  ]),
                  Row(children: [
                    SizedBox(
                      width: 0.1 * MediaQuery.of(context).size.width,
                    ),
                    Container(
                        width: 0.4 * MediaQuery.of(context).size.width,
                        height: w[2] * MediaQuery.of(context).size.height,
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
                      width: 0.8 * MediaQuery.of(context).size.width,
                      height: w[1] * MediaQuery.of(context).size.height,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 75, 255, 59),
                      ),
                      child: Text(
                        'ESTAÇÕES MAIS PERTO',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: f[2],
                        ),
                        textAlign: TextAlign.center,
                      )),
                  ///////////////////////////
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
                ])))));
  }
}

Widget Produto(Map produto) {
  final List<double> I = [25, 20];
  const double f = 15;
  return Container(
      height: 85,
      decoration: const BoxDecoration(color: Color.fromARGB(255, 54, 33, 243)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                IconButton(
                    icon: Icon(Icons.volume_up, size: I[1]), onPressed: () {}),
                const Image(image: AssetImage('./assets/images/Estrela.png')),
                const Image(image: AssetImage('./assets/images/Estrela.png')),
                const Image(image: AssetImage('./assets/images/Estrela.png')),
                const Image(image: AssetImage('./assets/images/Estrela.png')),
                const Image(image: AssetImage('./assets/images/Estrela.png'))
              ]),
              Text(
                ' ${produto['endereco']}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: f,
                ),
              ),
            ],
          ),
          Text(
            'kWh ${produto['kWh']}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: f,
            ),
          ),
          IconButton(icon: Icon(Icons.volume_up, size: I[0]), onPressed: () {}),
        ],
      ));
}
