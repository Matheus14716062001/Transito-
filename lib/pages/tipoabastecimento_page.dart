import 'package:flutter/material.dart';
import 'package:project/Widget/NavBar.dart';
import '../Modules/carro.dart';
import '../Modules/cor.dart';
import '../Modules/dado_carro.dart';
import '../Widget/button_g.dart';
import '../Widget/buuton_ima.dart';

class TipoabastecimentoPage extends StatefulWidget {
  TipoabastecimentoPage({Key? key}) : super(key: key);

  @override
  State<TipoabastecimentoPage> createState() => _TipoabastecimentoPageState();
}

class _TipoabastecimentoPageState extends State<TipoabastecimentoPage> {
  final List w = [0.32];
  final List e = [0.03, 0.01, 0.2];
  int cont = 0;
  late Carro carro_1 = carro[cont];
  void carro_selecionado() {
    setState(() {
      cont++;
      if (cont < carro.length) {
        carro_1 = carro[cont];
      } else {
        cont = 0;
        carro_1 = carro[cont];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle stylebutton = ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        backgroundColor: cor[0],
        textStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        elevation: 5,
        minimumSize: Size(0.6 * MediaQuery.of(context).size.width, 30));
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
          child: Column(
            children: [
              SizedBox(height: e[0] * MediaQuery.of(context).size.height),
              Container(
                height: w[0] * MediaQuery.of(context).size.height,
                width: 0.8 * MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: cor[2],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(34.0),
                    topRight: Radius.circular(34.0),
                    bottomLeft: Radius.circular(34.0),
                    bottomRight: Radius.circular(34.0),
                  ),
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () => carro_selecionado(),
                      icon: const Icon(Icons.arrow_back_sharp, size: 42),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          './assets/images/carro.png',
                          alignment: Alignment.topCenter,
                          width: 0.6 * MediaQuery.of(context).size.width,
                          height: 0.2 * MediaQuery.of(context).size.height,
                        ),
                        Text(
                          carro_1.modelo,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                            height: e[1] * MediaQuery.of(context).size.height),
                        ElevatedButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, '/ConsumoPage'),
                          style: stylebutton,
                          child: const Text(
                            'Detalhes do consumo',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () => carro_selecionado(),
                      icon: const Icon(Icons.arrow_forward_sharp, size: 42),
                    ),
                  ],
                ),
              ),
              SizedBox(height: e[0] * MediaQuery.of(context).size.height),
              const Text(
                'Conferir postos mais próximos',
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255), fontSize: 20),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: e[0] * MediaQuery.of(context).size.height),
              Row(
                children: [
                  SizedBox(width: 0.1 * MediaQuery.of(context).size.width),
                  Button_ima(
                      cor: cor[0], image: './assets/images/logoPage.png', w: 3),
                  SizedBox(width: e[2] * MediaQuery.of(context).size.width),
                  Button_ima(
                      cor: cor[0], image: './assets/images/logoPage.png', w: 3)
                ],
              ),
              SizedBox(height: e[0] * MediaQuery.of(context).size.height),
              Button_g(
                cor: cor[1],
                tex: 'Convidar amigos',
                context_: context,
                navegacao: '/SinginupPage',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
