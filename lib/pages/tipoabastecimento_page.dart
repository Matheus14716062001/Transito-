import 'package:flutter/material.dart';
import 'package:project/Widget/NavBar.dart';

// ignore: must_be_immutable
class TipoabastecimentoPage extends StatelessWidget {
  TipoabastecimentoPage({Key? key}) : super(key: key);
  double w_1 = 0.32;
  double w_2 = 0.05;
  double w_3 = 0.04;
  double e_1 = 0.04;
  double e_2 = 0.03;
  double e_3 = 0.015;

  @override
  Widget build(BuildContext context) {
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
        body: Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('./assets/images/fundoPage.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: e_1 * MediaQuery.of(context).size.height),
                Container(
                  height: w_2 * MediaQuery.of(context).size.height,
                  width: 0.8 * MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(202, 95, 150, 246),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'SELECIONE O TIPO DE ABASTECIMENTO',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(height: e_2 * MediaQuery.of(context).size.height),
                Container(
                  height: w_3 * MediaQuery.of(context).size.height,
                  width: 0.8 * MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Elétrico',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(height: e_3 * MediaQuery.of(context).size.height),
                SizedBox(
                  height: w_1 * MediaQuery.of(context).size.height,
                  width: 0.6 * MediaQuery.of(context).size.width,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    child: ColoredBox(
                      color: Colors.white,
                      child: SizedBox(
                        width: 0.5 * MediaQuery.of(context).size.width,
                        height:
                            (w_1 - 0.05) * MediaQuery.of(context).size.height,
                        child: IconButton(
                          icon: Image.asset('./assets/images/eletrico.png'),
                          iconSize: 90,
                          onPressed: () =>
                              Navigator.pushNamed(context, '/EstacoesPage'),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Container(
                  width: 0.8 * MediaQuery.of(context).size.width,
                  height: w_3 * MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Combustível',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(height: e_3 * MediaQuery.of(context).size.height),
                Center(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    child: ColoredBox(
                      color: Colors.white,
                      child: SizedBox(
                        width: 0.6 * MediaQuery.of(context).size.width,
                        height:
                            (w_1 - 0.05) * MediaQuery.of(context).size.height,
                        child: IconButton(
                          icon: Image.asset('./assets/images/combustivel.png'),
                          iconSize: 90,
                          onPressed: () =>
                              Navigator.pushNamed(context, '/PostoPage'),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
