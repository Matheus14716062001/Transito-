import 'package:flutter/material.dart';

import '../Modules/cor.dart';
import '../Widget/NavBar.dart';
import '../Widget/button_g.dart';
import '../Widget/custTefromField.dart';
import '../Widget/voltar.dart';

class Cadastrar_carroPage extends StatefulWidget {
  const Cadastrar_carroPage({Key? key}) : super(key: key);

  @override
  State<Cadastrar_carroPage> createState() => _Cadastrar_carroPageState();
}

class _Cadastrar_carroPageState extends State<Cadastrar_carroPage> {
  TextEditingController dadoveiculo = TextEditingController();
  TextEditingController dadoMarca = TextEditingController();
  TextEditingController dadomodelo = TextEditingController();
  TextEditingController dadoano = TextEditingController();

  final marcakey = GlobalKey<FormFieldState>();
  final nomeveiculokey = GlobalKey<FormFieldState>();
  final modelokey = GlobalKey<FormFieldState>();
  final anokey = GlobalKey<FormFieldState>();

  static const List<double> e = [0.035];
  static const List<double> f = [28];
  resetar() {
    dadoveiculo.text = '';
    dadoMarca.text = '';
    dadomodelo.text = '';
    dadoano.text = '';
  }

  @override
  Widget build(BuildContext context) {
    resetar();
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
            child: SizedBox(
              width: 0.8 * MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //SizedBox(height: e[0] * MediaQuery.of(context).size.height),
                  Text(
                    'Consumo médio do veículo',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        fontSize: f[0]),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                      height: 2 * e[0] * MediaQuery.of(context).size.height),
                  Cust_Texformfield(
                      dado: dadoveiculo,
                      label: 'Tipo de veículo',
                      key_: nomeveiculokey,
                      hint: 'Digite o Nome do veículo'),
                  SizedBox(height: e[0] * MediaQuery.of(context).size.height),
                  Cust_Texformfield(
                      dado: dadoMarca,
                      label: 'Marca do veículo',
                      key_: marcakey,
                      hint: 'Selecione a marca'),
                  SizedBox(height: e[0] * MediaQuery.of(context).size.height),
                  Cust_Texformfield(
                      dado: dadomodelo,
                      label: 'Modelo do veículo',
                      key_: modelokey,
                      hint: 'Digite o modelo'),
                  SizedBox(height: e[0] * MediaQuery.of(context).size.height),
                  Cust_Texformfield(
                      dado: dadoano,
                      label: 'Ano do veículo',
                      key_: anokey,
                      hint: 'Digite o ano'),
                  SizedBox(
                      height: 2 * e[0] * MediaQuery.of(context).size.height),
                  Button_g(
                    tex: 'Salvar',
                    context_: context,
                    navegacao: '/LoginPage',
                    cor: cor[0],
                  ),
                  SizedBox(height: e[0] * MediaQuery.of(context).size.height),
                  Button_g(
                    cor: cor[1],
                    tex: 'Salvar e Adicionar novo veículo',
                    context_: context,
                    navegacao: '/Cadastrar_carroPage',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
