import 'package:flutter/material.dart';
import 'package:project/Modules/cor.dart';
import 'package:project/Widget/contr.dart';
import 'package:project/Widget/text_w.dart';
import '../Widget/NavBar.dart';
import '../Widget/text_c.dart';
import '../Widget/text_c2.dart';

class EstacoesPage extends StatelessWidget {
  const EstacoesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<double> w = [0.15, 0.035, 0.03];
    const List<double> f = [24]; //[25, 20, 15]

    return MaterialApp(
      home: Scaffold(
        drawer: NavBar(context),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(55),
          child: AppBar(
            actions: [
              SizedBox(
                  width: 55, child: Image.asset('./assets/images/logoPage.png'))
            ],
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('./assets/images/fundoPage.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 0.05 * MediaQuery.of(context).size.height),
                Text_c2(
                    context, 'ESTAÇÕES MAIS PERTO', f[0], w[1], 0.8, cor[1]),

                ///////////////////////////
                Expanded(
                    child: Contr(
                  context_: context,
                  tipo: 'e',
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
