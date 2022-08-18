import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gpi/util/responsive.dart';

import '../../util/color.dart';

class ElevatedB extends StatefulWidget {
  final Function()? press;
  final String title;
  const ElevatedB(this.press, this.title, {Key? key}) : super(key: key);

  @override
  State<ElevatedB> createState() => _ElevatedBState();
}

class _ElevatedBState extends State<ElevatedB> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: responsive(context) * 8,
          vertical: responsive(context) * 2),
      child: ElevatedButton(
          onPressed: widget.press,
          // ignore: sort_child_properties_last
          child: Text(
            widget.title,
            style: GoogleFonts.montserrat(
                fontSize: 16, fontWeight: FontWeight.bold, color: $n_white),
          ),
          style: ElevatedButton.styleFrom(
            primary: $s_basic1,
            padding: EdgeInsets.symmetric(vertical: responsive(context) * 2),
          )),
    );
  }
}
