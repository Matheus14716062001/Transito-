import 'package:flutter/material.dart';

class CadastrarPage extends StatelessWidget {
  const CadastrarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle stylebutton_2 = ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        textStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        elevation: 5,
        minimumSize: const Size(350, 60),
        primary: Colors.yellow);
    var voltar = Row(children: [
      ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/HomePage');
          },
          child: const Text('oi'))
    ]);

    return MaterialApp(
        home: Scaffold(
      body: Stack(children: [
        const Image(
          image: AssetImage('./assets/images/fundoPage.png'),
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Row(children: [
          const SizedBox(width: 60),
          Image.asset(
            './assets/images/logoPage.png',
            alignment: Alignment.topCenter,
            height: 400,
            width: 400,
          )
        ]),
        Center(
            child: Column(
          children: [
            const SizedBox(height: 200),
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Enter your best email',
                labelText: 'Email',
                border: OutlineInputBorder(),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 54, 216, 244), width: 30)),
              ),
              onSaved: (String? value) {
                // This optional block of code can be used to run
                // code when the user saves the form.
              },
              validator: (String? value) {
                if ((value == null)) {
                  return 'invalida';
                }
              },
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Enter your best email',
                labelText: 'Email',
                border: OutlineInputBorder(),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 54, 216, 244), width: 30)),
              ),
              onSaved: (String? value) {
                // This optional block of code can be used to run
                // code when the user saves the form.
              },
              validator: (String? value) {
                if ((value == null)) {
                  return 'invalida';
                }
              },
            ),
            const SizedBox(height: 10),
            voltar,
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Enter your best email',
                labelText: 'Email',
                border: OutlineInputBorder(),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 54, 216, 244), width: 30)),
              ),
              onSaved: (String? value) {
                // This optional block of code can be used to run
                // code when the user saves the form.
              },
              validator: (String? value) {
                if ((value == null)) {
                  return 'invalida';
                }
              },
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'Enter your best email',
                labelText: 'Email',
                border: OutlineInputBorder(),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 54, 216, 244), width: 30)),
              ),
              onSaved: (String? value) {
                // This optional block of code can be used to run
                // code when the user saves the form.
              },
              validator: (String? value) {
                if ((value == null)) {
                  return 'invalida';
                }
              },
            ),
            const SizedBox(height: 10),
            voltar,
            const SizedBox(height: 10),
            Positioned(
              bottom: 30.0,
              child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/CadastrarPage'),
                style: stylebutton_2,
                child: const Text(
                  "Cadastrar",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ))
      ]),
    ));
  }
}
