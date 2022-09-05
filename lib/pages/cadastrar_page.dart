import 'package:flutter/material.dart';

class CadastrarPage extends StatelessWidget {
  const CadastrarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController dadoNome = TextEditingController();
    TextEditingController dadoEmail = TextEditingController();
    TextEditingController dadoSenha = TextEditingController();
    TextEditingController dadoconfirmarsenha = TextEditingController();
    TextEditingController dadoMarca = TextEditingController();
    TextEditingController dadoLinha = TextEditingController();
    TextEditingController dadoAno = TextEditingController();

    final Emailkey = GlobalKey<FormFieldState>();
    final Nomekey = GlobalKey<FormFieldState>();
    final Senhakey = GlobalKey<FormFieldState>();
    final Confirmarsenhakey = GlobalKey<FormFieldState>();
    final Marcakey = GlobalKey<FormFieldState>();
    final Linhakey = GlobalKey<FormFieldState>();
    final Anokey = GlobalKey<FormFieldState>();

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
              height: 45,
              child: TextFormField(
                  key: Marcakey,
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
                  controller: dadoMarca,
                  validator: (String? value) {
                    if ((value == null) || (value.isEmpty)) {
                      return 'invalida';
                    }
                  })),
          const SizedBox(width: 25),
          SizedBox(
              width: 120,
              height: 45,
              child: TextFormField(
                  key: Linhakey,
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
                  controller: dadoLinha,
                  validator: (String? value) {
                    if ((value == null) || (value.isEmpty)) {
                      return 'invalida';
                    }
                  })),
          const SizedBox(width: 25),
          SizedBox(
              width: 120,
              height: 45,
              child: TextFormField(
                  key: Anokey,
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
                  controller: dadoAno,
                  validator: (String? value) {
                    if ((value == null) || (value.isEmpty)) {
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
          const SizedBox(width: 120),
          Image.asset(
            './assets/images/logoPage.png',
            alignment: Alignment.topCenter,
            height: 300,
            width: 300,
          )
        ]),
        Center(
            child: SizedBox(
                width: 350,
                child: Column(
                  children: [
                    const SizedBox(height: 180),
                    SizedBox(
                      height: 45,
                      child: TextFormField(
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
                          if ((value == null) || (value.isEmpty)) {
                            return 'invalida';
                          }
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 45,
                      child: TextFormField(
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
                          if ((value == null) || (value.isEmpty)) {
                            return 'invalida';
                          }
                        },
                      ),
                    ),
                    const SizedBox(height: 15),
                    texto,
                    const SizedBox(height: 5),
                    dadocarro,
                    const SizedBox(height: 15),
                    SizedBox(
                      height: 45,
                      child: TextFormField(
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
                          if ((value == null) || (value.isEmpty)) {
                            return 'invalida';
                          }
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 45,
                      child: TextFormField(
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
                        controller: dadoconfirmarsenha,
                        validator: (String? value) {
                          if ((value == null) || (value.isEmpty)) {
                            return 'invalida';
                          }
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                    voltar,
                    const SizedBox(height: 10),
                    SizedBox(
                      child: ElevatedButton(
                        onPressed: () => {
                          Emailkey.currentState?.validate(),
                          Senhakey.currentState?.validate(),
                          Nomekey.currentState?.validate(),
                          Confirmarsenhakey.currentState?.validate(),
                          Marcakey.currentState?.validate(),
                          Linhakey.currentState?.validate(),
                          Anokey.currentState?.validate(),

                          //Navigator.pushNamed(context, '/LoginPage'),
                        },
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
