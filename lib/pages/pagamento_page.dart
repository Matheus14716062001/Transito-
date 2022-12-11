import 'package:flutter/material.dart';
import 'package:project/Modules/cor.dart';
import '../Modules/posto.dart';
import '../Widget/NavBar.dart';
import '../Widget/contr.dart';
import '../Widget/text_c.dart';
import '../Widget/text_c2.dart';

class PagamentoPage extends StatelessWidget {
  var lista;
  PagamentoPage({
    super.key,
    required this.lista,
  });
  List<double> w = [0.8, 0.05];
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
                width: 55,
                child: Image.asset('./assets/images/logoPage.png'),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Pagamento',
                  style: TextStyle(
                      color: Color.fromARGB(255, 250, 250, 250), fontSize: 25),
                  textAlign: TextAlign.center,
                ),
                tipo_de_conbustivel(
                  lista: lista,
                ),
                compar(
                  key: key,
                  lista: lista,
                ),
                Center(
                  child: SizedBox(
                    height: 0.7 * MediaQuery.of(context).size.height,
                    width: 0.9 * MediaQuery.of(context).size.width,
                    child: Center(
                      child: Column(
                        children: [
                          SizedBox(
                              height:
                                  0.05 * MediaQuery.of(context).size.height),
                          Text_c2(context, 'Forma de pagamento', 24, w[1], w[0],
                              cor[1]),
                          SizedBox(
                            height: 0.5 * MediaQuery.of(context).size.height,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Contr(
                                    context_: context,
                                    tipo: 'pa',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () =>
                                Navigator.pushNamed(context, '/VisaPage'),
                            child: Text_c2(context, 'adicionar cartão', 24,
                                w[1], w[0], cor[1]),
                          ),
                        ],
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

class tipo_de_conbustivel extends StatefulWidget {
  Posto lista;
  tipo_de_conbustivel({super.key, required this.lista});
  @override
  State<tipo_de_conbustivel> createState() => _tipo_de_conbustivelState();
}

class _tipo_de_conbustivelState extends State<tipo_de_conbustivel> {
  double i = 30;
  double custo = 0;
  int contr = 0;
  List<String> tipo = [
    'Gasolina',
    'Gasolina aditivada',
    'Gas',
    'Alcool',
  ];
  void det_custo() {
    setState(() {
      if (tipo[contr] == 'gasolina') {
        custo = widget.lista.gasolinaint;
      } else if (tipo[contr] == 'gasolina aditivada') {
        custo = widget.lista.gasolinaaditivadaint;
      } else if (tipo[contr] == 'gas') {
        custo = widget.lista.gasint;
      } else {
        custo = widget.lista.alcoolint;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    det_custo();
    return SizedBox(
      width: 0.85 * MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(Icons.arrow_left_outlined, size: i),
            onPressed: () {
              det_custo();
              if (contr >= 1) {
                contr--;
              }
            },
          ),
          Text_c(
              context, '${tipo[contr]} R\$${custo}', 25, 0.045, 0.65, cor[0]),
          IconButton(
            icon: Icon(Icons.arrow_right, size: i),
            onPressed: () {
              det_custo();
              if (contr <= 2) {
                contr++;
              }
            },
          ),
        ],
      ),
    );
  }
}

class compar extends StatefulWidget {
  Posto lista;

  compar({
    required this.lista,
    super.key,
  });

  @override
  // ignore: no_logic_in_create_state
  State<compar> createState() => _comparState();
}

class _comparState extends State<compar> {
  List<double> i = [30];
  List<double> e = [0.01];
  int quat = 0;

  void quant_atua(int adi) {
    setState(() {
      quat = quat + adi;
      if (quat <= 0) {
        quat = 0;
      }
    });
  }

  Widget texto_2() {
    return Row(
      children: [
        SizedBox(
          width: 0.22 * MediaQuery.of(context).size.width,
          child: Text(
            "Quat :${quat}L",
            style: const TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 20),
          ),
        ),
        SizedBox(
          width: 0.01 * MediaQuery.of(context).size.width,
        ),
        SizedBox(
          width: 0.3 * MediaQuery.of(context).size.width,
          child: Text(
            "Valor: R\$${widget.lista.gasolinaint * quat}",
            style: const TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 20),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.85 * MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(Icons.arrow_left_outlined, size: i[0]),
            onPressed: () {
              quant_atua(-10);
            },
          ),
          IconButton(
            icon: Icon(Icons.arrow_left_outlined, size: i[0]),
            onPressed: () {
              quant_atua(-1);
            },
          ),
          SizedBox(
            width: 0.53 * MediaQuery.of(context).size.width,
            child: texto_2(),
          ),
          IconButton(
            icon: Icon(Icons.arrow_right, size: i[0]),
            onPressed: () {
              quant_atua(1);
            },
          ),
          IconButton(
            icon: Icon(Icons.arrow_right, size: i[0]),
            onPressed: () {
              quant_atua(10);
            },
          )
        ],
      ),
    );
  }
}
