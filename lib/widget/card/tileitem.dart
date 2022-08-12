import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gpi/util/color.dart';
import 'package:gpi/util/responsive.dart';

class TileItem extends StatelessWidget {
  final String? title;
  final String? date;
  const TileItem(this.title, this.date, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: responsive(context) * 0.5),
      child: ListTile(
        title: Wrap(
          children: [
            Text(
              title!,
              style: GoogleFonts.ubuntu(
                  color: $n_dark, fontWeight: FontWeight.bold),
            )
          ],
        ),
        subtitle: Text("Realizado em: ${date}"),
      ),
    );
  }
}
