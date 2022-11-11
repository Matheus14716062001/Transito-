import 'package:flutter/material.dart';

import '../Widget/custTefromField.dart';
import '../Widget/voltar.dart';

class CadastrarPage extends StatefulWidget {
  const CadastrarPage({Key? key}) : super(key: key);

  @override
  State<CadastrarPage> createState() => _CadastrarPageState();
}

class _CadastrarPageState extends State<CadastrarPage> {
  TextEditingController dadoNome = TextEditingController();
  TextEditingController dadoEmail = TextEditingController();
  TextEditingController dadoSenha = TextEditingController();
  TextEditingController dadoconfirmarsenha = TextEditingController();
  TextEditingController dadoMarca = TextEditingController();
  TextEditingController dadoLinha = TextEditingController();
  TextEditingController dadoAno = TextEditingController();

  final Emailkey = GlobalKey<FormFieldState>();
  final Nomekey = GlobalKey<FormFieldState>();
  final Senhakey = GlobalKey<FormFieldState>();
  final Confirmarsenhakey = GlobalKey<FormFieldState>();
  final Marcakey = GlobalKey<FormFieldState>();
  final Linhakey = GlobalKey<FormFieldState>();
  final Anokey = GlobalKey<FormFieldState>();
  static const List<double> w = [0.8, 0.085, 0.06, 0.24, 0.35];
  static const List<double> e = [0.1, 0.035, 0.03, 0.038];

  @override
  Widget build(BuildContext context) {
    final ButtonStyle stylebutton_2 = ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      backgroundColor: const Color(0xffFEF44E),
      textStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      elevation: 5,
      minimumSize: Size(0.8 * MediaQuery.of(context).size.width, 45),
    );
    return MaterialApp(
      home: Scaffold(
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
                  SizedBox(height: e[0] * MediaQuery.of(context).size.height),
                  Image.asset(
                    './assets/images/logoPage.png',
                    alignment: Alignment.topCenter,
                    //height: w[4] * MediaQuery.of(context).size.height,
                    width: 0.8 * MediaQuery.of(context).size.width,
                    height: 0.2 * MediaQuery.of(context).size.height,
                  ),
                  Cust_Texformfield(
                      dado: dadoNome,
                      label: 'Nome',
                      key_: Nomekey,
                      hint: 'Digite o Nome'),
                  SizedBox(height: e[2] * MediaQuery.of(context).size.height),
                  Cust_Texformfield(
                      dado: dadoEmail,
                      label: 'Email',
                      key_: Emailkey,
                      hint: 'Digite o seu Email'),
                  SizedBox(height: e[1] * MediaQuery.of(context).size.height),
                  Cust_Texformfield(
                      dado: dadoSenha,
                      label: 'Senha',
                      key_: Senhakey,
                      hint: 'Digite a sua senha'),
                  SizedBox(height: e[2] * MediaQuery.of(context).size.height),
                  Cust_Texformfield(
                      dado: dadoconfirmarsenha,
                      label: 'Confirmar Senha',
                      key_: Confirmarsenhakey,
                      hint: 'Confirmar a senha'),
                  SizedBox(height: e[2] * MediaQuery.of(context).size.height),
                  Row(
                    children: [
                      SizedBox(width: 0.1 * MediaQuery.of(context).size.width),
                      voltar(context),
                    ],
                  ),
                  SizedBox(height: e[2] * MediaQuery.of(context).size.height),
                  ElevatedButton(
                    onPressed: () => {
                      Emailkey.currentState?.validate(),
                      Senhakey.currentState?.validate(),
                      Nomekey.currentState?.validate(),
                      Confirmarsenhakey.currentState?.validate(),
                      Marcakey.currentState?.validate(),
                      Linhakey.currentState?.validate(),
                      Anokey.currentState?.validate(),
                      Navigator.pushNamed(context, '/LoginPage'),
                    },
                    style: stylebutton_2,
                    child: const Text(
                      "Cadastrar",
                      style: TextStyle(color: Colors.black),
                    ),
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
