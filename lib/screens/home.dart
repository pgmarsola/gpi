import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:gpi/helper/coded.dart';
import 'package:gpi/mobx/operador/operador.controller.dart';
import 'package:gpi/model/cursos.model.dart';
import 'package:gpi/model/operador.model.dart';
import 'package:gpi/util/color.dart';
import 'package:gpi/widget/burger.dart';
import 'package:gpi/widget/card/cursocard.dart';
import 'package:gpi/widget/card/opcard.dart';
import 'package:gpi/widget/topbar.dart';

class Home extends StatefulWidget {
  final Operador? data;
  final List<Cursos>? cursos;
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
    Widget _list(
      List<Cursos>? data,
      BuildContext context,
    ) {
      List<Widget> list = <Widget>[];
      for (int i = 0; i < 4; i++) {
        var value;
        var dataCurso = codeDate(widget.cursos![i].data, value);

        list.add(Center(
            child: Card(
          margin: const EdgeInsets.all(10),
          child: ListTile(
            title: Text(widget.cursos![i].key.toString()),
            subtitle: Text("Realizado em: ${dataCurso}"),
          ),
        )));
      }
      return Column(children: list);
    }

    return Scaffold(
      appBar: TopBar(),
      drawer: Burger(widget.data!.nomeFuncionario.toString()),
      backgroundColor: $n_lightest,
      body: SingleChildScrollView(
          child: Column(children: [
        OpCard(widget.data),
        widget.cursos!.isNotEmpty
            ? Observer(builder: (_) => _list(widget.cursos!, context))
            : Column(
                children: [
                  const Text("Não foi possivel carregar dados em tela")
                ],
              )
      ])),
    );
  }
}
