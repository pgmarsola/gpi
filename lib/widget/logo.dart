import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gpi/util/color.dart';
import 'package:gpi/util/responsive.dart';

class Logo extends StatelessWidget {
  final int value;
  final bool title;
  const Logo(this.value, this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.all(responsive(context) * 2),
          height: responsive(context) * value,
          width: responsive(context) * value,
          child: Image.asset(
            'assets/icon.png',
            scale: 1,
          ),
        ),
        title == true
            ? Text(
                'Gestão de \nPerformance \nInterna',
                style: GoogleFonts.montserrat(
                    fontSize: 20, fontWeight: FontWeight.bold, color: $n_dark),
              )
            : SizedBox.shrink()
      ],
    );
  }
}
