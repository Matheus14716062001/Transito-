import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project/pages/home_page.dart';
import 'package:project/pages/initial_page.dart';
import 'package:project/pages/login_page.dart';

class Routes extends StatelessWidget {
  const Routes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // O initialRoute é a primeira rota que é aberta no app
      initialRoute: '/',
      routes: {
        '/': (context) => const InitialPage(),
        '/HomePage': (context) => const HomePage(),
        '/LoginPage': (context) => const LoginPage(),
      },
    );
  }
}
