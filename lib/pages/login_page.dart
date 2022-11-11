import 'package:flutter/material.dart';
import '../Modules/cor.dart';
import '../Widget/button_g.dart';
import '../Widget/custTefromField.dart';
import '../Widget/voltar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController dadoEmail = TextEditingController();
    TextEditingController dadoSenha = TextEditingController();
    final Emailkey = GlobalKey<FormFieldState>();
    final Senhakey = GlobalKey<FormFieldState>();
    const List<double> e = [0.05];
    return MaterialApp(
      home: Scaffold(
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
            children: [
              Image.asset(
                './assets/images/logoPage.png',
                alignment: Alignment.topCenter,
                //height: w[4] * MediaQuery.of(context).size.height,
                width: 0.8 * MediaQuery.of(context).size.width,
                height: 0.4 * MediaQuery.of(context).size.height,
              ),
              SizedBox(height: e[0] * MediaQuery.of(context).size.height),
              Cust_Texformfield(
                  dado: dadoEmail,
                  label: 'Email',
                  key_: Emailkey,
                  hint: 'Digite o seu Email'),
              SizedBox(height: e[0] * MediaQuery.of(context).size.height),
              Cust_Texformfield(
                  dado: dadoSenha,
                  label: 'Senha',
                  key_: Senhakey,
                  hint: 'Digite a sua senha'),
              SizedBox(height: e[0] * MediaQuery.of(context).size.height),
              Row(
                children: [
                  SizedBox(width: 0.1 * MediaQuery.of(context).size.width),
                  voltar(context),
                ],
              ),
              SizedBox(height: e[0] * MediaQuery.of(context).size.height),
              Button_g(
                  tex: 'Login',
                  context_: context,
                  navegacao: '/TipoabastecimentoPage',
                  cor: cor[0]),
            ],
          ),
        ),
      ),
    );
  }
}
