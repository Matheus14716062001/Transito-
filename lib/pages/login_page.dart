import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<String> email = ["123456", "234567", "345678", "456789"];
    const List<String> senha = ["123456", "234567", "345678", "456789"];
    bool validador = false;
    bool cor = true;
    TextEditingController dadoEmail = TextEditingController();
    TextEditingController dadoSenha = TextEditingController();
    // ignore: non_constant_identifier_names
    var voltar = Row(children: [
      ElevatedButton.icon(
          icon: Icon(Icons.arrow_back_ios_rounded),
          onPressed: () {
            Navigator.pushNamed(context, '/HomePage');
          },
          label: Text('voltar'))
    ]);

    void resetar() {
      dadoEmail.text = '';
      dadoSenha.text = '';
    }

    bool Validador() {
      String daemail = dadoEmail.text;
      String dasenha = dadoSenha.text;
      int i = 0;
      while (i < senha.length) {
        if (senha[i] == dasenha) {
          if (email[i] == daemail) {
            validador = true;
          }
        }
        i++;
      }

      return validador;
    }

    void setState(Null Function() param0) {}

    final ButtonStyle stylebutton_1 = ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        minimumSize: const Size(350, 60),
        primary: Colors.green);
    final Emailkey = GlobalKey<FormFieldState>();
    final Senhakey = GlobalKey<FormFieldState>();
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
            Center(
              heightFactor: double.infinity,
              widthFactor: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 190),
                  TextFormField(
                    key: Emailkey,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      hintText: 'Enter your best email',
                      labelText: 'Email',
                      border: OutlineInputBorder(),
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
                      if ((value == null) || (validador == false)) {
                        return 'Email invalida';
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                      key: Senhakey,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        labelText: 'Senha',
                        border: OutlineInputBorder(),
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
                        if ((value == null) || (validador == false)) {
                          return 'Senha invalida';
                        }
                      }),
                  const SizedBox(height: 10),
                  voltar,
                  const SizedBox(height: 40),
                  Positioned(
                    child: ElevatedButton(
                      onPressed: () => {
                        Validador(),
                        Emailkey.currentState?.validate(),
                        Senhakey.currentState?.validate(),
                        if (validador == true)
                          {Navigator.pushNamed(context, '/HomePage')}
                        else
                          {resetar()}
                      },
                      style: stylebutton_1,
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.black),
                      ),
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
