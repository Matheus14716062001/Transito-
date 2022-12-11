import 'package:flutter/material.dart';
import 'package:project/Modules/cor.dart';
import '../Widget/NavBar.dart';
import '../Widget/custTefromField.dart';
import '../Widget/button_g.dart';

// ignore: must_be_immutable
class VisaPage extends StatelessWidget {
  VisaPage({Key? key}) : super(key: key);
  TextEditingController dadoNome = TextEditingController();
  TextEditingController dadoEmail = TextEditingController();
  TextEditingController dadoSenha = TextEditingController();
  TextEditingController dadoconfirmarsenha = TextEditingController();
  TextEditingController dadoMarca = TextEditingController();
  TextEditingController dadoLinha = TextEditingController();
  TextEditingController dadoAno = TextEditingController();

  var emailkey = GlobalKey<FormFieldState>();
  var nomekey = GlobalKey<FormFieldState>();
  var senhakey = GlobalKey<FormFieldState>();
  var confirmarsenhakey = GlobalKey<FormFieldState>();
  var marcakey = GlobalKey<FormFieldState>();
  var linhakey = GlobalKey<FormFieldState>();
  var anokey = GlobalKey<FormFieldState>();
  @override
  Widget build(BuildContext context) {
    const List<double> w = [0.40, 0.20, 0.04];
    const List<double> e = [0.04, 0.025];
    const List<double> f = [20];

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
              children: [
                SizedBox(height: e[0] * MediaQuery.of(context).size.height),
                Image.asset(
                  './assets/images/pix.png',
                  alignment: Alignment.topCenter,
                  height: w[1] * MediaQuery.of(context).size.height,
                  width: 0.8 * MediaQuery.of(context).size.width,
                ),
                Cust_Texformfield(
                    dado: dadoSenha,
                    label: 'Número do cartão',
                    key_: emailkey,
                    hint: 'Digite Número do cartão'),
                SizedBox(height: e[1] * MediaQuery.of(context).size.height),
                Cust_Texformfield(
                    dado: dadoNome,
                    label: 'Nome',
                    key_: nomekey,
                    hint: 'Digite o Nome'),
                Cust_Texformfield(
                    dado: dadoSenha,
                    label: 'Validade',
                    key_: linhakey,
                    hint: 'Digite a Validade'),
                SizedBox(height: e[1] * MediaQuery.of(context).size.height),
                Cust_Texformfield(
                    dado: dadoSenha,
                    label: 'Código de segurança',
                    key_: senhakey,
                    hint: 'Digite o Código de segurança'),
                SizedBox(height: e[1] * MediaQuery.of(context).size.height),
                Button_g(
                  cor: cor[0],
                  tex: "Pagar",
                  context_: context,
                  navegacao: '/MapaPage',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
