import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gpi/util/color.dart';
import 'package:gpi/util/responsive.dart';

class CardAlert extends StatelessWidget {
  final String? title;
  final String? body;

  const CardAlert(this.title, this.body, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(responsive(context) * 2),
      decoration: BoxDecoration(
          color: $n_white,
          borderRadius:
              BorderRadius.all(Radius.circular(responsive(context) * 1))),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(responsive(context) * 1.5),
            decoration: BoxDecoration(
              color: $s_alert,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(responsive(context) * 1),
                  topRight: Radius.circular(responsive(context) * 1)),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(right: responsive(context) * 1.5),
                  child: Icon(
                    Icons.error_outline,
                    color: $p_orange,
                    size: responsive(context) * 2.5,
                  ),
                ),
                Text(
                  title!,
                  style: GoogleFonts.ubuntu(
                      color: $n_white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.all(responsive(context) * 2.5),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      body!,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.ubuntu(color: $n_dark, fontSize: 14),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
