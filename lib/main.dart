import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:project/pages/estacoes_page.dart';
import 'package:project/pages/fila_page.dart';
import 'package:project/pages/home_page.dart';
import 'package:project/pages/initial_page.dart';
import 'package:project/pages/login_page.dart';
import 'package:project/pages/mapa_page.dart';
import 'package:project/pages/pagamento_page.dart';
import 'package:project/pages/pix_page.dart';
import 'package:project/pages/postos_page.dart';
import 'package:project/pages/signup_page.dart';
import 'package:project/pages/cadastrar_page.dart';
import 'package:project/pages/tipoabastecimento_page.dart';
import 'package:project/pages/visa_page.dart';
import 'package:project/pages/feedback.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    // O initialRoute é a primeira rota que é aberta no app
    initialRoute: '/',
    routes: {
      '/': (context) => const InitialPage(),
      '/HomePage': (context) => const HomePage(),
      '/LoginPage': (context) => const LoginPage(),
      '/SinginupPage': (context) => const Siginup(),
      '/CadastrarPage': (context) => const CadastrarPage(),
      '/TipoabastecimentoPage': (context) => TipoabastecimentoPage(),
      '/EstacoesPage': (context) => const EstacoesPage(),
      '/PostoPage': (context) => const PostoPage(),
      '/FilaPage': (context) => const FilaPage(),
      '/PagamentoPage': (context) => const PagamentoPage(),
      '/PixPage': (context) => const PixPage(),
      '/VisaPage': (context) => const VisaPage(),
      '/MapaPage': (context) => const MapaPage(),
      '/FeedbackPage': (context) => const FeedbackPage(),
    },
  ));
}
