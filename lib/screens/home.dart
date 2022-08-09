import 'package:flutter/material.dart';
import 'package:gpi/helper/coded.dart';
import 'package:gpi/mobx/operador/operador.controller.dart';
import 'package:gpi/model/cursos.model.dart';
import 'package:gpi/model/operador.model.dart';
import 'package:gpi/util/color.dart';
import 'package:gpi/widget/burger.dart';
import 'package:gpi/widget/opcard.dart';
import 'package:gpi/widget/topbar.dart';

class Home extends StatefulWidget {
  final Operador? data;
  final Cursos? cursos;
  const Home(this.data, this.cursos, {Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  OperadorController? _operadorController;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var value;
    var data = codeDate(widget.cursos!.data, value);
    return Scaffold(
      appBar: TopBar(),
      drawer: Burger(widget.data!.nomeFuncionario.toString()),
      backgroundColor: $n_lightest,
      body: SingleChildScrollView(
          child: Column(children: [
        OpCard(widget.data),
        Center(
            child: Card(
          margin: const EdgeInsets.all(10),
          child: ListTile(
              title: Text(widget.cursos!.key.toString()),
              subtitle: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("Realizado em: ${data}"),
                  Text("Realizado em: ${widget.cursos!.certificado}"),
                ],
              )),
        )),
      ])),
    );
  }
}
