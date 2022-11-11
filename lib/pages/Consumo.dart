import 'package:flutter/material.dart';
import 'package:project/Widget/button_g.dart';
import '../Modules/carro.dart';
import '../Modules/cor.dart';
import '../Modules/dado_carro.dart';
import '../Widget/NavBar.dart';

class ConsumoPage extends StatefulWidget {
  //const ConsumoPage({Key? key}) : super(key: key);
  int cont;
  ConsumoPage({super.key, required this.cont});

  @override
  State<ConsumoPage> createState() => _ConsumoPageState();
}

class _ConsumoPageState extends State<ConsumoPage> {
  int cont = 0;
  late Carro carro_1 = carro[cont];
  late String navegacao_page;
  void navegacao() {
    if (carro_1.tipoabastecimento == 'Combustivel') {
      navegacao_page = '/EstacoesPage';
    } else {
      navegacao_page = '/PostoPage';
    }
  }

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
    const List<double> f = [32];
    final List e = [0.05, 0.3, 0.1];
    navegacao();
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Consumo médio do veículo',
                style: TextStyle(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: f[0]),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                width: 0.8 * MediaQuery.of(context).size.width,
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
              Row(
                children: [
                  SizedBox(width: e[2] * MediaQuery.of(context).size.width),
                  SizedBox(
                    width: 0.25 * MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        const Text(
                          'Gasolina',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 24),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                            height: e[0] * MediaQuery.of(context).size.height),
                        Text(
                          'Rodovia:${carro_1.rodoviagasolina}',
                          style: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                            height: e[0] * MediaQuery.of(context).size.height),
                        Text(
                          'Cidade:${carro_1.cidadegasolina}',
                          style: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: e[1] * MediaQuery.of(context).size.width),
                  SizedBox(
                    width: 0.25 * MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        const Text(
                          'Alcool',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 24),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                            height: e[0] * MediaQuery.of(context).size.height),
                        Text(
                          'Rodovia:${carro_1.rodoviaalcool}',
                          style: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                            height: e[0] * MediaQuery.of(context).size.height),
                        Text(
                          'Cidade:${carro_1.cidadealcool}',
                          style: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: e[0] * MediaQuery.of(context).size.height),
              Button_g(
                tex: 'Adicionar novo veículo',
                context_: context,
                navegacao: '/Cadastrar_carroPage',
                cor: cor[0],
              ),
              SizedBox(height: e[0] * MediaQuery.of(context).size.height),
              Button_g(
                cor: cor[1],
                tex: 'Postos mais próximos',
                context_: context,
                navegacao: navegacao_page,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
