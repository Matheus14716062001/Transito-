import 'package:flutter/material.dart';

class Cust_Texformfield extends StatelessWidget {
  final TextEditingController dado;
  String label;
  final Key key_;
  String hint;
  Cust_Texformfield(
      {required this.label,
      required this.dado,
      required this.key_,
      required this.hint});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.06 * MediaQuery.of(context).size.height,
      width: 0.8 * MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(6.0),
          topRight: Radius.circular(6.0),
          bottomLeft: Radius.circular(6.0),
          bottomRight: Radius.circular(6.0),
        ),
      ),
      child: TextFormField(
        key: key_,
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          labelStyle: const TextStyle(
            fontSize: 12,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6.0)),
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                  color: Color.fromARGB(255, 54, 216, 244), width: 30)),
        ),
        controller: dado,
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return 'invalido';
          }
        },
      ),
    );
  }
}
