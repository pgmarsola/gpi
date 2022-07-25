import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gpi/util/color.dart';
import 'package:gpi/util/responsive.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  TopBar();

  Size get preferredSize {
    return new Size.fromHeight(50.0);
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: $p_red,
        centerTitle: true,
        title: Row(
          children: [
            Text(
              "GPI",
              style: GoogleFonts.ubuntu(
                  color: $n_white, fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: responsive(context) * 1,
            ),
            Text(
              "Gestão de Performance Interna",
              style: GoogleFonts.ubuntu(
                  color: $n_white, fontSize: 12, fontWeight: FontWeight.bold),
            )
          ],
        ));
  }
}
