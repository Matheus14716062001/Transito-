import 'package:flutter/material.dart';
import 'package:project/Widget/contr.dart';
import 'package:project/Widget/text_w.dart';
import '../Widget/NavBar.dart';
import '../Widget/text_c.dart';
import '../Widget/text_c2.dart';

class EstacoesPage extends StatelessWidget {
  const EstacoesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<double> w = [0.15, 0.035, 0.03];
    const List<double> e = [0.01, 0.005];
    const List<double> f = [12, 16, 17]; //[25, 20, 15]
    const double fo = 15;
    const List<Color> cor = [
      Color(0xFF42A5F5),
      Color(0xffFEF44E),
      Color(0xFF61FD7D)
    ];
    List<Map> lista = [
      {'endereco': 'Av. Dom Hélder Câmara, 1', 'kWh': '1,25', 'Estrela': 5},
      {'endereco': 'Av. Dom Hélder Câmara, 2', 'kWh': '1,25', 'Estrela': 4},
      {'endereco': 'Av. Dom Hélder Câmara, 3', 'kWh': '1,25', 'Estrela': 1},
      {'endereco': 'Av. Dom Hélder Câmara, 4', 'kWh': '1,25', 'Estrela': 5},
      {'endereco': 'Av. Dom Hélder Câmara, 5', 'kWh': '1,25', 'Estrela': 3},
      {'endereco': 'Av. Dom Hélder Câmara, 6', 'kWh': '1,25', 'Estrela': 2}
    ];
    return MaterialApp(
        home: Scaffold(
            drawer: NavBar(context),
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
                  Image.asset(
                    './assets/images/carro.png',
                    alignment: Alignment.topCenter,
                    height: w[0] * MediaQuery.of(context).size.height,
                    width: 0.8 * MediaQuery.of(context).size.width,
                  ),
                  Text_w('Volkswagen, Fox/Motor: 1.6/Ano: 2014', f[0]),
                  SizedBox(height: e[0] * MediaQuery.of(context).size.height),
                  Text_c(context, 'Consumo médio de 15,8 kWh a cada 100 Km',
                      f[0], w[1], 0.8, cor[1]),
                  Row(children: [
                    SizedBox(
                      width: 0.1 * MediaQuery.of(context).size.width,
                    ),
                    Center(
                      child: Text_w('Tempo de recarga:', f[0]),
                    )
                  ]),
                  Row(children: [
                    SizedBox(
                      width: 0.1 * MediaQuery.of(context).size.width,
                    ),
                    Center(child: Text_w('Tomada comum:', f[0])),
                  ]),
                  Row(children: [
                    SizedBox(
                      width: 0.1 * MediaQuery.of(context).size.width,
                    ),
                    Text_c(context, '20 Km/h', f[0], w[1], 0.4, cor[0]),
                  ]),
                  const SizedBox(height: 10),
                  Row(children: [
                    SizedBox(
                      width: 0.1 * MediaQuery.of(context).size.width,
                    ),
                    Text_w('Carregador wallbox de 11 Kw:', f[0]),
                  ]),
                  Row(children: [
                    SizedBox(
                      width: 0.1 * MediaQuery.of(context).size.width,
                    ),
                    Text_c(context, '40 Km/h', f[0], w[1], 0.4, cor[0]),
                  ]),
                  SizedBox(height: e[1] * MediaQuery.of(context).size.height),
                  Row(children: [
                    SizedBox(
                      width: 0.1 * MediaQuery.of(context).size.width,
                    ),
                    Center(
                      child: Text_w(
                          'Carregador DC, ultrarrápido de corrente contínua:',
                          f[0]),
                    )
                  ]),
                  Row(children: [
                    SizedBox(
                      width: 0.1 * MediaQuery.of(context).size.width,
                    ),
                    Text_c(context, '320 Km/h', f[0], w[2], 0.4, cor[0]),
                  ]),
                  const SizedBox(height: 10),
                  Text_c2(
                      context, 'ESTAÇÕES MAIS PERTO', f[2], w[1], 0.8, cor[2]),

                  ///////////////////////////
                  Expanded(child: Contr(context, lista, 'e'))
                ])))));
  }
}
