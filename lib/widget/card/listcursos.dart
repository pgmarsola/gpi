import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gpi/util/color.dart';
import 'package:gpi/util/responsive.dart';

class ListCursos extends StatelessWidget {
  final String? title;
  final Widget? widget;
  final Function()? route;
  const ListCursos(this.title, this.widget, this.route, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(responsive(context) * 2),
        decoration: BoxDecoration(
            color: $n_white,
            borderRadius:
                BorderRadius.all(Radius.circular(responsive(context) * 1))),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Container(
            padding: EdgeInsets.all(responsive(context) * 1.5),
            decoration: BoxDecoration(
              color: $n_dark,
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
                    Icons.star_border,
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
          widget!,
          InkWell(
            // ignore: sort_child_properties_last
            child: Container(
                padding: EdgeInsets.all(responsive(context) * 1.5),
                decoration: BoxDecoration(
                  color: $n_dark,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(responsive(context) * 1),
                      bottomRight: Radius.circular(responsive(context) * 1)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Ver Todos".toUpperCase(),
                      style: GoogleFonts.ubuntu(
                          color: $n_white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                    SizedBox(
                      width: responsive(context) * 1,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: responsive(context) * 3,
                      color: $n_white,
                    )
                  ],
                )),
            onTap: route,
          )
        ]));
  }
}
