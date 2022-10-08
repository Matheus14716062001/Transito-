import 'package:flutter/material.dart';
import '../Widget/NavBar.dart';

class MapaPage extends StatelessWidget {
  const MapaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<double> w = [0.55, 0.25, 0.03];
    const List<double> e = [0.05, 0.005];
    const List<double> f = [30, 17, 20];
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
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('./assets/images/mapa.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
