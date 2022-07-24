import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:gpi/mobx/operador/operador.controller.dart';
import 'package:gpi/model/operador.model.dart';
import 'package:gpi/widget/loading.dart';

class Home extends StatefulWidget {
  final Operador? data;
  const Home(this.data, {Key? key}) : super(key: key);

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
      appBar:
          AppBar(title: const Text("lista de operadores"), centerTitle: true),
      backgroundColor: Colors.black26,
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
      ])),
    );
  }
}
