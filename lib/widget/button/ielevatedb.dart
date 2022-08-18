import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gpi/util/responsive.dart';

import '../../util/color.dart';

class IElevatedB extends StatefulWidget {
  final Function()? press;
  final String title;
  const IElevatedB(this.press, this.title, {Key? key}) : super(key: key);

  @override
  State<IElevatedB> createState() => _IElevatedBState();
}

class _IElevatedBState extends State<IElevatedB> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: responsive(context) * 8,
          vertical: responsive(context) * 2),
      child: ElevatedButton(
          onPressed: widget.press,
          // ignore: sort_child_properties_last
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: responsive(context) * 2),
            child: Row(
              children: [
                Icon(
                  Icons.qr_code,
                  size: responsive(context) * 3,
                ),
                SizedBox(
                  width: responsive(context) * 1.5,
                ),
                Text(
                  widget.title.toUpperCase(),
                  style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: $n_white),
                ),
              ],
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: $s_basic1,
            padding: EdgeInsets.symmetric(vertical: responsive(context) * 2),
          )),
    );
  }
}
