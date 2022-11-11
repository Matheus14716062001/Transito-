import 'package:flutter/material.dart';
import '../Widget/NavBar.dart';
import '../Widget/contr.dart';
import '../Widget/text_c.dart';
import '../Widget/text_c2.dart';

class PostoPage extends StatelessWidget {
  const PostoPage({Key? key}) : super(key: key);
  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    const List<Color> cor = [
      Color(0xFF42A5F5),
      Color(0xffFEF44E),
      Color(0xFF61FD7D),
    ];
    List<Map> lista = [
      {
        'endereco': 'Av. Dom Hélder Câmara, 1',
        'Estrela': 1,
        'Gasolina': '1,25',
        'gasolina_aditivada': '1,25',
        'Gas': '1,25',
        'alcool': '1,25'
      },
      {
        'Estrela': 2,
        'Gasolina': '1,25',
        'gasolina_aditivada': '1,25',
        'Gas': '1,25',
        'alcool': '1,25'
      },
      {
        'endereco': 'Av. Dom Hélder Câmara, 3',
        'Estrela': 3,
        'Gasolina': '1,25',
        'gasolina_aditivada': '1,25',
        'Gas': '1,25',
        'alcool': '1,25'
      },
      {
        'endereco': 'Av. Dom Hélder Câmara, 4',
        'Estrela': 4,
        'Gasolina': '1,25',
        'gasolina_aditivada': '1,25',
        'Gas': '1,25',
        'alcool': '1,25'
      },
      {
        'endereco': 'Av. Dom Hélder Câmara, 5',
        'Estrela': 5,
        'Gasolina': '1,25',
        'gasolina_aditivada': '1,25',
        'Gas': '1,25',
        'alcool': '1,25'
      },
      {
        'endereco': 'Av. Dom Hélder Câmara, 6',
        'Estrela': 5,
        'Gasolina': '1,25',
        'gasolina_aditivada': '1,25',
        'Gas': '1,25',
        'alcool': '1,25'
      }
    ];
    const List<double> w = [0.8, 0.35, 0.15, 0.1, 0.04, 0.035];
    const List<double> e = [0.015, 0.01];
    const List<double> f = [20, 17, 13];
    return MaterialApp(
      home: Scaffold(
        drawer: NavBar(context),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(55),
          child: AppBar(
            actions: [
              SizedBox(
                  width: 55, child: Image.asset('./assets/images/logoPage.png'))
            ],
          ),
        ),
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
                Text_c2(context, 'POSTOS MAIS PERTO', f[0], w[4], w[0], cor[2]),
                Expanded(child: Contr(context, lista, 'p'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
