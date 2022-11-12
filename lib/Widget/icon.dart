import 'package:flutter/material.dart';
import 'package:project/Modules/estacoes.dart';

import '../Modules/posto.dart';

class iconsalva extends StatefulWidget {
  var lista;
  iconsalva({super.key, required this.lista});

  @override
  State<iconsalva> createState() => _iconsalvaState();
}

class _iconsalvaState extends State<iconsalva> {
  static const List<double> I = [25, 20];
  @override
  Widget build(BuildContext context) {
    void salvar() {
      setState(() {
        widget.lista.salvo = true;
        print('salvar');
      });
    }

    void apagar() {
      setState(() {
        widget.lista.salvo = false;
        print('apagar');
      });
    }

    if (widget.lista.salvo == true) {
      return SizedBox(
        child: IconButton(
            icon: Icon(Icons.assistant_photo, size: I[0]),
            onPressed: () {
              apagar();
            }),
      );
    } else {
      return SizedBox(
        child: IconButton(
            icon: Icon(Icons.assistant_photo_outlined, size: I[0]),
            onPressed: () {
              salvar();
            }),
      );
    }
  }
}
