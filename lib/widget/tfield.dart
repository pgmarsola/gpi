import 'package:flutter/material.dart';
import 'package:gpi/util/color.dart';
import 'package:gpi/util/responsive.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class TField extends StatefulWidget {
  final TextEditingController controller;
  const TField(this.controller, {Key? key}) : super(key: key);

  @override
  State<TField> createState() => _TFieldState();
}

class _TFieldState extends State<TField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(responsive(context) * 4),
      child: TextFormField(
          keyboardType: TextInputType.number,
          controller: widget.controller,
          textAlign: TextAlign.left,
          inputFormatters: [
            MaskTextInputFormatter(
                mask: 'xxx.xxx.xxx-xx', filter: {'x': RegExp(r'[0-9]')})
          ],
          style: TextStyle(color: $n_dark, fontSize: 16),
          decoration: InputDecoration(
              hintText: 'Informe seu CPF',
              border:
                  OutlineInputBorder(borderSide: BorderSide(color: $s_basic1))),
          validator: (value) {
            if (value!.isEmpty) {
              return "Campo obrigatório";
            }
          }),
    );
  }
}
