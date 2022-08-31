import 'package:flutter/material.dart';

class CadastrarPage extends StatelessWidget {
  const CadastrarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController dadoNome = TextEditingController();
    TextEditingController dadoEmail = TextEditingController();
    TextEditingController dadoSenha = TextEditingController();
    TextEditingController Confirmarsenha = TextEditingController();
    final Emailkey = GlobalKey<FormFieldState>();
    final Nomekey = GlobalKey<FormFieldState>();
    final Senhakey = GlobalKey<FormFieldState>();
    final Confirmarsenhakey = GlobalKey<FormFieldState>();

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
      ElevatedButton.icon(
          icon: const Icon(Icons.arrow_back_ios_rounded),
          onPressed: () {
            Navigator.pushNamed(context, '/HomePage');
          },
          label: const Text('voltar'))
    ]);
    var dadocarro = SizedBox(
        width: 450,
        height: 50,
        child: Row(children: [
          const SizedBox(width: 40),
          SizedBox(
              width: 120,
              height: 50,
              child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 54, 216, 244),
                            width: 30)),
                  ),
                  onSaved: (String? value) {
                    // This optional block of code can be used to run
                    // code when the user saves the form.
                  },
                  validator: (String? value) {
                    if ((value == null)) {
                      return 'invalida';
                    }
                  })),
          const SizedBox(width: 25),
          SizedBox(
              width: 120,
              height: 50,
              child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 54, 216, 244),
                            width: 30)),
                  ),
                  onSaved: (String? value) {
                    // This optional block of code can be used to run
                    // code when the user saves the form.
                  },
                  validator: (String? value) {
                    if ((value == null)) {
                      return 'invalida';
                    }
                  })),
          const SizedBox(width: 25),
          SizedBox(
              width: 120,
              height: 50,
              child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 54, 216, 244),
                            width: 30)),
                  ),
                  onSaved: (String? value) {
                    // This optional block of code can be used to run
                    // code when the user saves the form.
                  },
                  validator: (String? value) {
                    if ((value == null)) {
                      return 'invalida';
                    }
                  }))
        ]));
    var texto = SizedBox(
        width: 370,
        child: Row(children: const [Text('Informe sobre o seu carro:')]));
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
        SizedBox(
            width: 450,
            child: Center(
                child: Column(
              children: [
                const SizedBox(height: 200),
                TextFormField(
                  key: Nomekey,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: 'Nome',
                    border: OutlineInputBorder(),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 54, 216, 244),
                            width: 30)),
                  ),
                  onSaved: (String? value) {
                    // This optional block of code can be used to run
                    // code when the user saves the form.
                  },
                  controller: dadoNome,
                  validator: (String? value) {
                    if ((value == null)) {
                      return 'invalida';
                    }
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  key: Emailkey,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    hintText: 'Enter your best email',
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 54, 216, 244),
                            width: 30)),
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
                const SizedBox(height: 15),
                texto,
                const SizedBox(height: 5),
                dadocarro,
                const SizedBox(height: 15),
                TextFormField(
                  key: Senhakey,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: 'Senha',
                    border: OutlineInputBorder(),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 54, 216, 244),
                            width: 30)),
                  ),
                  onSaved: (String? value) {
                    // This optional block of code can be used to run
                    // code when the user saves the form.
                  },
                  controller: dadoSenha,
                  validator: (String? value) {
                    if ((value == null)) {
                      return 'invalida';
                    }
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  key: Confirmarsenhakey,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: 'Confirmar senha',
                    border: OutlineInputBorder(),
                    errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 54, 216, 244),
                            width: 30)),
                  ),
                  onSaved: (String? value) {
                    // This optional block of code can be used to run
                    // code when the user saves the form.
                  },
                  controller: Confirmarsenha,
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
                    onPressed: () => Navigator.pushNamed(context, '/LoginPage'),
                    style: stylebutton_2,
                    child: const Text(
                      "Cadastrar",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            )))
      ]),
    ));
  }
}
