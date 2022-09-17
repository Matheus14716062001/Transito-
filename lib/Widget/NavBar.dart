import 'package:flutter/material.dart';

Widget NavBar(BuildContext context) {
  return Drawer(
      child: ListView(
    padding: EdgeInsets.zero,
    children: <Widget>[
      UserAccountsDrawerHeader(
        accountName: const Text('Nome'),
        accountEmail: const Text('Email'),
        currentAccountPicture:
            CircleAvatar(child: Image.asset('./assets/images/logoPage.png')),
      ),
      ListTile(
        leading: const Icon(Icons.favorite),
        title: const Text('Voltar'),
        onTap: () => {Navigator.pop(context)},
      ),
      ListTile(
        leading: const Icon(Icons.favorite),
        title: const Text('/PixPage'),
        onTap: () => {Navigator.pushNamed(context, '/PixPage')},
      ),
      ListTile(
        leading: const Icon(Icons.favorite),
        title: const Text('/PagamentoPage'),
        onTap: () => {Navigator.pushNamed(context, '/PagamentoPage')},
      ),
      ListTile(
        leading: const Icon(Icons.favorite),
        title: const Text('/FilaPage'),
        onTap: () => {Navigator.pushNamed(context, '/FilaPage')},
      ),
      ListTile(
        leading: const Icon(Icons.favorite),
        title: const Text('/VisaPage'),
        onTap: () => {Navigator.pushNamed(context, '/VisaPage')},
      ),
      ListTile(
        leading: const Icon(Icons.favorite),
        title: const Text('/FeedbackPage'),
        onTap: () => {Navigator.pushNamed(context, '/FeedbackPage')},
      ),
    ],
  ));
}
