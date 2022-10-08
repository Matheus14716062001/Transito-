import 'package:flutter/material.dart';

import '../sing_up/sing_up_service.dart';
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

  @override
  Widget build(BuildContext context) {
    const List<double> w = [0.8, 0.085, 0.06, 0.24, 0.35];
    const List<double> e = [0.1, 0.035, 0.03, 0.038];
    const List<double> f = [25, 15];

    final ButtonStyle stylebutton_2 = ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        textStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        elevation: 5,
        minimumSize: const Size(350, 60),
        primary: const Color(0xffFEF44E));
    var dadocarro = SizedBox(
      width: w[0] * MediaQuery.of(context).size.width,
      child: Row(
        children: [
          SizedBox(
            height: w[2] * MediaQuery.of(context).size.height,
            width: w[3] * MediaQuery.of(context).size.width,
            child: TextFormField(
              key: Marcakey,
              decoration: const InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(
                  fontSize: 12,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 54, 216, 244), width: 30)),
              ),
              onSaved: (String? value) {
                // This optional block of code can be used to run
                // code when the user saves the form.
              },
              controller: dadoMarca,
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'invalida';
                }
              },
            ),
          ),
          SizedBox(width: e[3] * MediaQuery.of(context).size.width),
          SizedBox(
            height: w[2] * MediaQuery.of(context).size.height,
            width: w[3] * MediaQuery.of(context).size.width,
            child: TextFormField(
              key: Linhakey,
              decoration: const InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(
                  fontSize: 12,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 54, 216, 244), width: 30)),
              ),
              onSaved: (String? value) {
                // This optional block of code can be used to run
                // code when the user saves the form.
              },
              controller: dadoLinha,
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'invalida';
                }
              },
            ),
          ),
          SizedBox(width: e[3] * MediaQuery.of(context).size.width),
          SizedBox(
            height: w[2] * MediaQuery.of(context).size.height,
            width: w[3] * MediaQuery.of(context).size.width,
            child: TextFormField(
              key: Anokey,
              decoration: const InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(
                  fontSize: 12,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 54, 216, 244), width: 30)),
              ),
              onSaved: (String? value) {
                // This optional block of code can be used to run
                // code when the user saves the form.
              },
              controller: dadoAno,
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'invalida';
                }
              },
            ),
          ),
        ],
      ),
    );
    var texto = SizedBox(
      child: Row(
        children: [
          SizedBox(width: 0.1 * MediaQuery.of(context).size.width),
          const Text('Informe sobre o seu carro:',
              style: TextStyle(
                color: Colors.white,
              ))
        ],
      ),
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
                children: [
                  Image.asset(
                    './assets/images/logoPage.png',
                    alignment: Alignment.topCenter,
                    //height: w[4] * MediaQuery.of(context).size.height,
                    width: w[0] * MediaQuery.of(context).size.width,
                    height: 0.2 * MediaQuery.of(context).size.height,
                  ),
                  SizedBox(height: e[2] * MediaQuery.of(context).size.height),
                  SizedBox(
                    height: w[2] * MediaQuery.of(context).size.height,
                    width: w[0] * MediaQuery.of(context).size.width,
                    child: TextFormField(
                      key: Nomekey,
                      decoration: const InputDecoration(
                        labelText: 'Nome',
                        labelStyle: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 54, 216, 244),
                                width: 30)),
                      ),
                      onSaved: (String? value) {
                        // This optional block of code can be used to run
                        // code when the user saves the form.
                      },
                      controller: dadoNome,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'invalida';
                        }
                      },
                    ),
                  ),
                  SizedBox(height: e[2] * MediaQuery.of(context).size.height),
                  SizedBox(
                    height: w[2] * MediaQuery.of(context).size.height,
                    width: w[0] * MediaQuery.of(context).size.width,
                    child: TextFormField(
                      key: Emailkey,
                      decoration: const InputDecoration(
                        hintText: 'Enter your best email',
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 54, 216, 244),
                                width: 30)),
                      ),
                      onSaved: (String? value) {
                        // This optional block of code can be used to run
                        // code when the user saves the form.
                      },
                      controller: dadoEmail,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'invalida';
                        }
                      },
                    ),
                  ),
                  SizedBox(height: e[1] * MediaQuery.of(context).size.height),
                  texto,
                  SizedBox(
                      height: e[2] * 0.25 * MediaQuery.of(context).size.height),
                  dadocarro,
                  SizedBox(height: e[1] * MediaQuery.of(context).size.height),
                  SizedBox(
                    height: w[2] * MediaQuery.of(context).size.height,
                    width: w[0] * MediaQuery.of(context).size.width,
                    child: TextFormField(
                      key: Senhakey,
                      decoration: const InputDecoration(
                        labelText: 'Senha',
                        labelStyle: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 54, 216, 244),
                                width: 30)),
                      ),
                      onSaved: (String? value) {
                        // This optional block of code can be used to run
                        // code when the user saves the form.
                      },
                      controller: dadoSenha,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'invalida';
                        }
                      },
                    ),
                  ),
                  SizedBox(height: e[2] * MediaQuery.of(context).size.height),
                  SizedBox(
                    height: w[2] * MediaQuery.of(context).size.height,
                    width: w[0] * MediaQuery.of(context).size.width,
                    child: TextFormField(
                      key: Confirmarsenhakey,
                      decoration: const InputDecoration(
                        labelText: 'Confirmar senha',
                        labelStyle: TextStyle(
                          fontSize: 12,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 54, 216, 244),
                                width: 30)),
                      ),
                      onSaved: (String? value) {},
                      controller: dadoconfirmarsenha,
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'invalida';
                        }
                      },
                    ),
                  ),
                  SizedBox(height: e[2] * MediaQuery.of(context).size.height),
                  Row(
                    children: [
                      SizedBox(width: 0.1 * MediaQuery.of(context).size.width),
                      voltar(context),
                    ],
                  ),
                  SizedBox(height: e[2] * MediaQuery.of(context).size.height),
                  SizedBox(
                    width: w[0] * MediaQuery.of(context).size.width,
                    height: w[1] * MediaQuery.of(context).size.height,
                    child: ElevatedButton(
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
