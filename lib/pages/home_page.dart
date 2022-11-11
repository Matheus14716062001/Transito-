import 'package:flutter/material.dart';

import '../Modules/cor.dart';
import '../Widget/button_g.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                './assets/images/logopage.png',
                alignment: Alignment.topCenter,
                height: 0.5 * MediaQuery.of(context).size.height,
                width: 0.8 * MediaQuery.of(context).size.width,
              ),
              Button_g(
                tex: 'Login',
                context_: context,
                navegacao: '/LoginPage',
                cor: cor[0],
              ),
              const SizedBox(
                height: 20,
              ),
              Button_g(
                cor: cor[1],
                tex: 'Cadastrar',
                context_: context,
                navegacao: '/CadastrarPage',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
