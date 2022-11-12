import 'package:flutter/material.dart';
import 'package:project/Modules/cor.dart';
import '../Widget/NavBar.dart';
import '../Widget/contr.dart';
import '../Widget/text_c2.dart';

class PostoPage extends StatelessWidget {
  const PostoPage({Key? key}) : super(key: key);
  // ignore: non_constant_identifier_names

  @override
  Widget build(BuildContext context) {
    ;

    const List<double> w = [0.8, 0.04];

    const List<double> f = [24];
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
                Text_c2(context, 'POSTOS MAIS PERTO', f[0], w[1], w[0], cor[1]),
                Expanded(
                    child: Contr(
                  context_: context,
                  tipo: 'p',
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
