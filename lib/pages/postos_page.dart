import 'package:flutter/material.dart';

class PostoPage extends StatelessWidget {
  const PostoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map> lista = [
      {
        'endereco': 'Av. Dom Hélder Câmara, 1',
        'Estrela': '5',
        'Gasolina': '1,25',
        'gasolina_aditivada': '1,25',
        'Gas': '1,25',
        'alcool': '1,25'
      },
      {
        'endereco': 'Av. Dom Hélder Câmara, 2',
        'Estrela': '5',
        'Gasolina': '1,25',
        'gasolina_aditivada': '1,25',
        'Gas': '1,25',
        'alcool': '1,25'
      },
      {
        'endereco': 'Av. Dom Hélder Câmara, 3',
        'Estrela': '5',
        'Gasolina': '1,25',
        'gasolina_aditivada': '1,25',
        'Gas': '1,25',
        'alcool': '1,25'
      },
      {
        'endereco': 'Av. Dom Hélder Câmara, 4',
        'Estrela': '5',
        'Gasolina': '1,25',
        'gasolina_aditivada': '1,25',
        'Gas': '1,25',
        'alcool': '1,25'
      },
      {
        'endereco': 'Av. Dom Hélder Câmara, 5',
        'Estrela': '5',
        'Gasolina': '1,25',
        'gasolina_aditivada': '1,25',
        'Gas': '1,25',
        'alcool': '1,25'
      },
      {
        'endereco': 'Av. Dom Hélder Câmara, 6',
        'Estrela': '5',
        'Gasolina': '1,25',
        'gasolina_aditivada': '1,25',
        'Gas': '1,25',
        'alcool': '1,25'
      }
    ];
    const List<double> w = [0.8, 0.35, 0.15, 0.1, 0.035, 0.03];
    const List<double> e = [0.015, 0.01];
    const List<double> f = [20, 17, 13];
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
                    child: Column(
                  children: [
                    Row(children: [
                      const SizedBox(width: 150),
                      Image.asset(
                        './assets/images/carro.png',
                        alignment: Alignment.topCenter,
                        height: w[2] * MediaQuery.of(context).size.height,
                      )
                    ]),
                    Text('Volkswagen, Fox/Motor: 1.6/Ano: 2014',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: f[2],
                        ),
                        textAlign: TextAlign.center),
                    SizedBox(height: e[0] * MediaQuery.of(context).size.height),
                    Container(
                        width: w[0] * MediaQuery.of(context).size.width,
                        height: w[5] * MediaQuery.of(context).size.height,
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
                          'Gasolina',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ))),
                    Row(children: [
                      SizedBox(
                        width: w[3] * MediaQuery.of(context).size.width,
                      ),
                      Column(children: [
                        Text('Tempo de recarga:',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: f[1],
                            ),
                            textAlign: TextAlign.center),
                        SizedBox(
                          width: 0.1 * MediaQuery.of(context).size.width,
                        ),
                        Container(
                            width: w[1] * MediaQuery.of(context).size.width,
                            height: w[5] * MediaQuery.of(context).size.height,
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
                            )),
                      ]),
                      SizedBox(
                        width: w[3] * MediaQuery.of(context).size.width,
                      ),
                      Column(children: [
                        Text('Tempo de recarga:',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: f[1],
                            ),
                            textAlign: TextAlign.center),
                        Container(
                            width: w[1] * MediaQuery.of(context).size.width,
                            height: w[5] * MediaQuery.of(context).size.height,
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
                            )),
                      ])
                    ]),
                    SizedBox(height: e[1] * MediaQuery.of(context).size.height),
                    Container(
                        width: w[0] * MediaQuery.of(context).size.width,
                        height: w[5] * MediaQuery.of(context).size.height,
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
                          'Gasolina',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ))),
                    Row(children: [
                      SizedBox(
                        width: w[3] * MediaQuery.of(context).size.width,
                      ),
                      Column(children: [
                        Text('Tempo de recarga:',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: f[1],
                            ),
                            textAlign: TextAlign.center),
                        SizedBox(
                          width: 0.1 * MediaQuery.of(context).size.width,
                        ),
                        Container(
                            width: w[1] * MediaQuery.of(context).size.width,
                            height: w[5] * MediaQuery.of(context).size.height,
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
                            )),
                      ]),
                      SizedBox(
                        width: w[3] * MediaQuery.of(context).size.width,
                      ),
                      Column(children: [
                        Text('Tempo de recarga:',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: f[1],
                            ),
                            textAlign: TextAlign.center),
                        Container(
                            width: w[1] * MediaQuery.of(context).size.width,
                            height: w[5] * MediaQuery.of(context).size.height,
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
                            )),
                      ])
                    ]),
                    SizedBox(height: e[1] * MediaQuery.of(context).size.height),
                    Container(
                        width: w[0] * MediaQuery.of(context).size.width,
                        height: w[4] * MediaQuery.of(context).size.height,
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
                    Flexible(
                        flex: 10,
                        child: ListView.separated(
                          padding: const EdgeInsets.all(15.0),
                          itemCount: lista.length,
                          itemBuilder: ((context, index) {
                            return Produto(lista[index],
                                MediaQuery.of(context).size.width);
                          }),
                          separatorBuilder: (__, _) => const Divider(),
                        ))
                  ],
                )))));
  }
}

Widget Produto(Map produto, double tela) {
  const List<double> I = [25, 20];
  const double f = 15;

  return Container(
      height: 95.0,
      decoration: const BoxDecoration(color: Color.fromARGB(255, 54, 33, 243)),
      child: Row(
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
              SizedBox(
                width: 0.4 * tela,
                child: Text(
                  ' ${produto['endereco']}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: f,
                  ),
                ),
              )
            ],
          ),
          Column(
            children: [
              const SizedBox(height: 5),
              Text('Gasolina: ${produto['Gasolina']}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: f,
                  )),
              Text(
                'Gasolina Aditivada: ${produto['gasolina_aditivada']}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: f,
                ),
              ),
              Text(
                'Gás: ${produto['Gas']}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: f,
                ),
              ),
              Text(
                'Álcool: ${produto['alcool']}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: f,
                ),
              )
            ],
          ),
          IconButton(icon: Icon(Icons.volume_up, size: I[0]), onPressed: () {}),
        ],
      ));
}
