import 'package:flutter/material.dart';

class TField extends StatefulWidget {
  final TextEditingController controller;
  const TField(this.controller, {Key? key}) : super(key: key);

  @override
  State<TField> createState() => _TFieldState();
}

class _TFieldState extends State<TField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType: TextInputType.number,
        controller: widget.controller,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.blue, fontSize: 12),
        validator: (value) {
          if (value!.isEmpty) {
            return "Campo obrigatório";
          }
        });
  }
}
