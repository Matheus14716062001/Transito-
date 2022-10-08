import 'package:flutter/material.dart';

import '../Widget/NavBar.dart';
import '../Widget/text_c.dart';

class VisaPage extends StatelessWidget {
  const VisaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<double> w = [0.40, 0.20, 0.04];
    const List<double> e = [0.04, 0.025];
    const List<double> f = [20];
    const List<Color> cor = [Color(0xffFEF44E), Color(0xFF61FD7D)];

    final ButtonStyle stylebutton_1 = ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        textStyle: TextStyle(fontSize: f[0], fontWeight: FontWeight.bold),
        minimumSize: const Size(350, 60),
        primary: cor[1]);
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
                Text_c(
                    context, 'Valor Total :  181,50', f[0], w[2], 0.8, cor[0]),
                SizedBox(height: e[1] * MediaQuery.of(context).size.height),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: 'Número do cartão',
                    border: OutlineInputBorder(),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 30)),
                  ),
                  onSaved: (String? value) {
                    // This optional block of code can be used to run
                    // code when the user saves the form.
                  },
                  //controller: ,
                  validator: (String? value) {
                    //if ((value == null) || (validador == false)) {
                    // return 'Email invalida';
                    //}
                  },
                ),
                SizedBox(height: e[1] * MediaQuery.of(context).size.height),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: 'Nome',
                    border: OutlineInputBorder(),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 30)),
                  ),
                  onSaved: (String? value) {
                    // This optional block of code can be used to run
                    // code when the user saves the form.
                  },
                  //controller: ,
                  validator: (String? value) {
                    //if ((value == null) || (validador == false)) {
                    // return 'Email invalida';
                    //}
                  },
                ),
                SizedBox(height: e[1] * MediaQuery.of(context).size.height),
                TextFormField(
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: 'Validade',
                    border: OutlineInputBorder(),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 30)),
                  ),
                  onSaved: (String? value) {
                    // This optional block of code can be used to run
                    // code when the user saves the form.
                  },
                  //controller: ,
                  validator: (String? value) {
                    //if ((value == null) || (validador == false)) {
                    // return 'Email invalida';
                    //}
                  },
                ),
                SizedBox(height: e[1] * MediaQuery.of(context).size.height),
                Row(
                  children: [
                    SizedBox(
                      width: 0.5 * MediaQuery.of(context).size.width,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.person),
                          labelText: 'Validade',
                          border: OutlineInputBorder(),
                          errorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 30)),
                        ),
                        onSaved: (String? value) {
                          // This optional block of code can be used to run
                          // code when the user saves the form.
                        },
                        //controller: ,
                        validator: (String? value) {
                          //if ((value == null) || (validador == false)) {
                          // return 'Email invalida';
                          //}
                        },
                      ),
                    ),
                    SizedBox(height: e[1] * MediaQuery.of(context).size.height),
                    SizedBox(
                      width: 0.5 * MediaQuery.of(context).size.width,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          icon: Icon(Icons.person),
                          labelText: 'Código de segurança',
                          border: OutlineInputBorder(),
                          errorBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 30)),
                        ),
                        onSaved: (String? value) {
                          // This optional block of code can be used to run
                          // code when the user saves the form.
                        },
                        //controller: ,
                        validator: (String? value) {
                          //if ((value == null) || (validador == false)) {
                          // return 'Email invalida';
                          //}
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: e[1] * MediaQuery.of(context).size.height),
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/MapaPage'),
                  style: stylebutton_1,
                  child: const Text(
                    "Pagar",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
