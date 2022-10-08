import 'package:flutter/material.dart';
import 'package:project/sing_up/sing_up_service.dart';
import '../Widget/voltar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController dadoEmail = TextEditingController();
    TextEditingController dadoSenha = TextEditingController();
    final Emailkey = GlobalKey<FormFieldState>();
    final Senhakey = GlobalKey<FormFieldState>();
    // ignore: non_constant_identifier_names
    final ButtonStyle stylebutton_1 = ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        minimumSize: const Size(350, 60),
        primary: const Color(0xff77FF87));

    void resetar() {
      dadoEmail.text = '';
      dadoSenha.text = '';
    }

    return MaterialApp(
      home: Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            const Image(
              image: AssetImage('./assets/images/homePage.png'),
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            SizedBox(
              width: 0.8 * MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 190),
                  TextFormField(
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
                          borderSide:
                              BorderSide(color: Colors.blue, width: 30)),
                    ),
                    onSaved: (String? value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    controller: dadoEmail,
                    validator: (String? value) {
                      if ((value == null)) {
                        return 'Email invalida';
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
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
                          borderSide:
                              BorderSide(color: Colors.blue, width: 30)),
                    ),
                    onSaved: (String? value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                    controller: dadoSenha,
                    validator: (String? value) {
                      if ((value == null)) {
                        return 'Senha invalida';
                      }
                    },
                  ),
                  const SizedBox(height: 10),
                  voltar(context),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () => {
                      Emailkey.currentState?.validate(),
                      Senhakey.currentState?.validate(),
                      resetar(),
                      Navigator.pushNamed(context, '/TipoabastecimentoPage')
                    },
                    style: stylebutton_1,
                    child: const Text(
                      "Login",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
