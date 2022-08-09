import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gpi/helper/coded.dart';
import 'package:gpi/util/color.dart';
import 'package:gpi/util/responsive.dart';

import '../../../model/operador.model.dart';

class OpCard extends StatefulWidget {
  final Operador? op;
  const OpCard(this.op, {Key? key}) : super(key: key);

  @override
  State<OpCard> createState() => _OpCardState();
}

class _OpCardState extends State<OpCard> {
  @override
  Widget build(BuildContext context) {
    var admissao;
    var data_ad = codeDate(widget.op!.dataAdmissao, admissao);

    return Container(
      margin: EdgeInsets.all(responsive(context) * 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(responsive(context) * 1),
                    topRight: Radius.circular(responsive(context) * 1)),
                color: $s_basic2),
            alignment: Alignment.center,
            // ignore: sort_child_properties_last
            child: Text(
              widget.op!.cargo.toString(),
              style: GoogleFonts.ubuntu(
                  color: $n_white, fontWeight: FontWeight.bold, fontSize: 14),
            ),
            padding: EdgeInsets.all(responsive(context) * 1.5),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(responsive(context) * 1),
                    bottomRight: Radius.circular(responsive(context) * 1)),
                color: $n_white),
            alignment: Alignment.topLeft,
            // ignore: sort_child_properties_last
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  widget.op!.nomeFuncionario.toString(),
                  style: GoogleFonts.ubuntu(
                      color: $n_dark,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                Text(
                  widget.op!.nomeEmpresa.toString(),
                  style: GoogleFonts.ubuntu(
                      color: $n_medium,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
                Text(
                  widget.op!.tipo.toString(),
                  style: GoogleFonts.ubuntu(color: $n_medium, fontSize: 12),
                ),
                const Divider(),
                Text(
                  "Data de Admissão: ${data_ad}",
                  style: GoogleFonts.ubuntu(color: $n_dark, fontSize: 14),
                ),
                const Divider(),
                Text(
                  "Status: ${widget.op!.status == 1 ? "Ativo" : "Inativo"}",
                  style: GoogleFonts.ubuntu(color: $n_dark, fontSize: 14),
                ),
              ],
            ),
            padding: EdgeInsets.all(responsive(context) * 1.5),
          ),
        ],
      ),
    );
  }
}
