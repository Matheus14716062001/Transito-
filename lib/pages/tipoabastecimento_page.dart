import 'package:flutter/material.dart';

class TipoabastecimentoPage extends StatelessWidget {
  const TipoabastecimentoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(55),
          child: AppBar(
            leading: Container(
                width: 55,
                height: 55,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/logoPage.png')))),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.dehaze))
            ],
          )),
      body: Stack(alignment: Alignment.bottomCenter, children: [
        const Image(
          image: AssetImage('./assets/images/fundopage.png'),
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Center(
            child: Container(
                width: 450,
                height: 900,
                child: Column(children: [
                  const SizedBox(height: 30),
                  Container(
                      width: 350.0,
                      height: 25.0,
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          )),
                      child: const Center(
                          child: Text(
                        'SELECIONE O TIPO DE ABASTECIMENTO',
                        textAlign: TextAlign.center,
                      ))),
                  const SizedBox(height: 25),
                  Container(
                      width: 150.0,
                      height: 25.0,
                      decoration: const BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          )),
                      child: const Center(
                          child: Text(
                        'Elétrico',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ))),
                  const SizedBox(height: 10),
                  Center(
                      child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                          child: ColoredBox(
                              color: Colors.white,
                              child: SizedBox(
                                  width: 300,
                                  height: 200,
                                  child: IconButton(
                                    icon: Image.asset('images/eletrico.png'),
                                    iconSize: 90,
                                    onPressed: () =>
                                        Navigator.pushNamed(context, '/'),
                                  ))))),
                  const SizedBox(height: 25),
                  Container(
                      width: 150.0,
                      height: 25.0,
                      decoration: const BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                            bottomLeft: Radius.circular(20.0),
                            bottomRight: Radius.circular(20.0),
                          )),
                      child: const Center(
                          child: Text(
                        'Combustível',
                        textAlign: TextAlign.center,
                      ))),
                  const SizedBox(height: 10),
                  Center(
                      child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(30)),
                          child: ColoredBox(
                              color: Colors.white,
                              child: SizedBox(
                                  width: 300,
                                  height: 200,
                                  child: IconButton(
                                    icon: Image.asset('images/combustivel.png'),
                                    iconSize: 90,
                                    onPressed: () =>
                                        Navigator.pushNamed(context, '/'),
                                  ))))),
                ])))
      ]),
    ));
  }
}
