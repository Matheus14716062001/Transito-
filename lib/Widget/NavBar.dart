import 'package:flutter/material.dart';

Widget NavBar(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        const UserAccountsDrawerHeader(
          accountName: Text('Nome'),
          accountEmail: Text('Email'),
        ),
        ListTile(
          leading: const Icon(Icons.favorite),
          title: const Text('Voltar'),
          onTap: () => {Navigator.pop(context)},
        ),
        ListTile(
          leading: const Icon(Icons.favorite),
          title: const Text('Posto salvos'),
          onTap: () => {Navigator.pushNamed(context, '/posto_s_page')},
        ),
        ListTile(
          leading: const Icon(Icons.favorite),
          title: const Text('Fast Pass'),
          onTap: () => {Navigator.pushNamed(context, '/FilaPage')},
        ),
        ListTile(
          leading: const Icon(Icons.favorite),
          title: const Text('Ajuda e feedback'),
          onTap: () => {Navigator.pushNamed(context, '/FeedbackPage')},
        ),
        ListTile(
          leading: const Icon(Icons.favorite),
          title: const Text('Convidar amigos'),
          onTap: () => {Navigator.pushNamed(context, '/FeedbackPage')},
        ),
      ],
    ),
  );
}
