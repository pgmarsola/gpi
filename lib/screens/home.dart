import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:gpi/mobx/operador/operador.controller.dart';
import 'package:gpi/model/operador.model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  OperadorController? _operadorController;

  @override
  void initState() {
    super.initState();
    _operadorController = OperadorController();
    _operadores();
  }

  _operadores() async {
    _operadorController = OperadorController();
    _operadorController!.loadOperadores();
  }

  Widget _list(
    List<Operador>? data,
    BuildContext context,
  ) {
    List<Widget> list = <Widget>[];
    for (int i = 0; i < data!.length; i++) {
      list.add(Card(
        margin: const EdgeInsets.all(10),
        child: ListTile(
          leading: Text(data[i].nomeFuncionario.toString().substring(0, 1)),
          title: Text(data[i].nomeFuncionario.toString()),
          subtitle: Text(data[i].nomeEmpresa.toString()),
        ),
      ));
    }
    return Column(children: list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text("lista de operadores"), centerTitle: true),
      backgroundColor: Colors.black26,
      body: SingleChildScrollView(child: Center(
        child: Observer(builder: (context) {
          if (_operadorController!.load) {
            return Container(
              child: CircularProgressIndicator(color: Colors.amber),
              height: 100,
              width: 100,
            );
          } else {
            if (_operadorController!.operadores != null &&
                _operadorController!.operadores!.isNotEmpty) {
              return Observer(
                  builder: (_) =>
                      _list(_operadorController!.operadores, context));
            } else {
              return Column(
                children: [Text("Não foi possivel carregar dados em tela")],
              );
            }
          }
        }),
      )),
    );
  }
}
