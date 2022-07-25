import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gpi/screens/login.dart';
import 'package:gpi/util/capitalized.dart';
import 'package:gpi/util/color.dart';
import 'package:gpi/util/responsive.dart';

class Burger extends StatefulWidget {
  final String name;
  const Burger(this.name, {Key? key}) : super(key: key);

  @override
  State<Burger> createState() => _BurgerState();
}

class _BurgerState extends State<Burger> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: responsive(context) * 36,
        backgroundColor: $n_white,
        child: ListView(
          children: [
            Container(
              color: $p_red,
              height: responsive(context) * 24,
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.symmetric(
                  horizontal: responsive(context) * 4,
                  vertical: responsive(context) * 4),
              child: Text(
                "Bem vindo(a),\n${widget.name.toCapitalized().split(' ')[0]}",
                style: GoogleFonts.ubuntu(
                    color: $n_white, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
                title: Text("Meus dados"),
                // subtitle: Text("meus favoritos..."),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  debugPrint('toquei no drawer');
                }),
            ListTile(
                title: Text("Suporte"),
                // subtitle: Text("meus favoritos..."),
                trailing: Icon(Icons.chevron_right),
                onTap: () {
                  debugPrint('toquei no drawer');
                }),
            ListTile(
                title: Text("Sair"),
                // subtitle: Text("meus favoritos..."),
                trailing: Icon(Icons.exit_to_app),
                onTap: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Login()));
                }),
          ],
        ));
  }
}
