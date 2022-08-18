import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:gpi/helper/coded.dart';
import 'package:gpi/mobx/operador/cop.controller.dart';
import 'package:gpi/model/operador.model.dart';
import 'package:gpi/screens/certificates.dart';
import 'package:gpi/util/color.dart';
import 'package:gpi/util/navigator.dart';
import 'package:gpi/widget/burger.dart';
import 'package:gpi/widget/button/ielevatedb.dart';
import 'package:gpi/widget/card/cardalert.dart';
import 'package:gpi/widget/card/listcursos.dart';
import 'package:gpi/widget/card/opcard.dart';
import 'package:gpi/widget/card/tileitem.dart';
import 'package:gpi/widget/loading.dart';
import 'package:gpi/widget/topbar.dart';

class Home extends StatefulWidget {
  final Operador? data;
  const Home(this.data, {Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  CopController? _copController = CopController();

  @override
  void initState() {
    super.initState();
    _copController = CopController();
    _getCursos();
  }

  _getCursos() async {
    _copController = CopController();
    _copController!.getCursos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(),
      drawer: Burger(widget.data!.nomeFuncionario.toString()),
      backgroundColor: $n_lightest,
      body: SingleChildScrollView(
          child: Column(children: [
        OpCard(widget.data!),
        Observer(builder: (context) {
          if (_copController!.load) {
            return Loading();
          } else {
            if (_copController!.curso != null) {
              return ListCursos(
                  "Último Certificado Obtido",
                  Observer(
                      builder: (_) => TileItem(_copController!.curso!.key,
                          date(_copController!.curso!.data))), () {
                Nav.push(context, Certificates(_copController!.cursos));
              });
            } else {
              return const CardAlert("Certificados",
                  "Você não possui nenhum certificado disponível");
            }
          }
        }),
        IElevatedB(() {}, "verificar operador")
      ])),
    );
  }
}
