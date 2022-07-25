import 'package:flutter/material.dart';
import 'package:gpi/mobx/operador/operador.controller.dart';
import 'package:gpi/model/cursos.model.dart';
import 'package:gpi/model/operador.model.dart';
import 'package:gpi/util/color.dart';
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
    return Scaffold(
      appBar: TopBar(),
      drawer: Drawer(),
      backgroundColor: $n_lightest,
      body: SingleChildScrollView(
          child: Column(children: [
        Center(
            child: Card(
          margin: const EdgeInsets.all(10),
          child: ListTile(
            leading:
                Text(widget.data!.nomeFuncionario.toString().substring(0, 1)),
            title: Text(widget.data!.nomeFuncionario.toString()),
            subtitle: Text(widget.data!.nomeEmpresa.toString()),
          ),
        )),
        Center(
            child: Card(
          margin: const EdgeInsets.all(10),
          child: ListTile(
            leading: Text("1"),
            title: Text("IPA"),
            subtitle: Text("Realizado em: " + widget.cursos!.ipa.toString()),
          ),
        )),
      ])),
    );
  }
}
