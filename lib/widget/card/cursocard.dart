import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gpi/helper/coded.dart';
import 'package:gpi/util/color.dart';

import '../../model/cursos.model.dart';
import '../../util/responsive.dart';

class CursoCard extends StatefulWidget {
  final Cursos? cursos;
  const CursoCard(this.cursos, {Key? key}) : super(key: key);

  @override
  State<CursoCard> createState() => _CursoCardState();
}

class _CursoCardState extends State<CursoCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(responsive(context) * 2),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(responsive(context) * 1),
                    topRight: Radius.circular(responsive(context) * 1)),
                color: $n_medium),
            alignment: Alignment.center,
            // ignore: sort_child_properties_last
            child: Row(
              children: [
                Icon(
                  FontAwesomeIcons.fileCircleCheck,
                  color: $n_white,
                  size: responsive(context) * 2.5,
                ),
                SizedBox(
                  width: responsive(context) * 2,
                ),
                Text(
                  widget.cursos!.key.toString(),
                  style: GoogleFonts.ubuntu(
                      color: $n_white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                )
              ],
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
                  "Realizado em: ${date(widget.cursos!.data)}",
                  style: GoogleFonts.ubuntu(color: $n_dark, fontSize: 14),
                ),
                const Divider(),
                Text(
                  widget.cursos!.certificado.toString(),
                  style: GoogleFonts.ubuntu(color: $s_warning, fontSize: 14),
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
