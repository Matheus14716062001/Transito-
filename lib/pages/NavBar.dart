import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: [
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
          title: const Text('Favorito'),
          onTap: () => {},
        ),
        ListTile(
          leading: const Icon(Icons.favorite),
          title: const Text('Favorito'),
          onTap: () => {},
        ),
        ListTile(
          leading: const Icon(Icons.favorite),
          title: const Text('Favorito'),
          onTap: () => {},
        ),
        ListTile(
          leading: const Icon(Icons.favorite),
          title: const Text('Favorito'),
          onTap: () => {},
        ),
        ListTile(
          leading: const Icon(Icons.favorite),
          title: const Text('Favorito'),
          onTap: () => {},
        ),
      ],
    ));
  }
}
