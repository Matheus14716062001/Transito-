import 'package:flutter/material.dart';
import 'package:project/pages/estacoes_page.dart';
import 'package:project/pages/home_page.dart';
import 'package:project/pages/initial_page.dart';
import 'package:project/pages/login_page.dart';
import 'package:project/pages/signup_page.dart';
import 'package:project/pages/cadastrar_page.dart';
import 'package:project/pages/tipoabastecimento_page.dart';

void main() {
  runApp(MaterialApp(
    // O initialRoute é a primeira rota que é aberta no app
    initialRoute: '/',
    routes: {
      '/': (context) => const InitialPage(),
      '/HomePage': (context) => const HomePage(),
      '/LoginPage': (context) => const LoginPage(),
      '/SinginupPage': (context) => const Siginup(),
      '/CadastrarPage': (context) => const CadastrarPage(),
      '/TipoabastecimentoPage': (context) => const TipoabastecimentoPage(),
      '/EstacoesPages': (context) => const EstacoesPage(),
    },
  ));
}
