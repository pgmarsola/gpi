import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:gpi/helper/service/operador.service.dart';
import 'package:gpi/mobx/operador/cop.controller.dart';
import 'package:gpi/screens/home.dart';
import 'package:gpi/util/color.dart';
import 'package:gpi/widget/button/elevatedb.dart';
import 'package:gpi/widget/loading.dart';
import 'package:gpi/widget/logo.dart';
import 'package:gpi/widget/tfield.dart';

import '../mobx/operador/operador.controller.dart';
import '../model/operador.model.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController cpf_controller = TextEditingController();
  OperadorController? _operadorController;
  CopController? _copController;
  bool loading = false;

  @override
  void initState() {
    super.initState();
    _operadorController = OperadorController();
    _copController = CopController();
    _operadores();
  }

  _operadores() async {
    _operadorController = OperadorController();
    _operadorController!.loadOperadores();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: $n_white,
      body: Center(
        child: Form(
            key: _formKey,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Logo(16, true),
                  TField(cpf_controller),
                  Observer(builder: (context) {
                    if (_copController!.load) {
                      return Loading();
                    } else {
                      if (_copController!.operador != null) {
                        return Observer(
                            builder: (_) => ElevatedB(() async {
                                  var contain = _operadorController!.operadores!
                                      .where((element) =>
                                          element.cpf ==
                                          cpf_controller.text
                                              .replaceAll('.', '')
                                              .replaceAll('-', ''));
                                  if (contain.isNotEmpty) {
                                    await _copController!.saveOperador(contain);
                                    setState(() {
                                      loading = false;
                                    });
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (context) => Home(
                                                _copController!.operador)));
                                  }
                                }, "Entrar"));
                      } else {
                        return ElevatedB(() async {
                          setState(() {
                            loading = true;
                          });
                          var contain = _operadorController!.operadores!.where(
                              (element) =>
                                  element.cpf ==
                                  cpf_controller.text
                                      .replaceAll('.', '')
                                      .replaceAll('-', ''));
                          if (contain.isNotEmpty) {
                            await _copController!.saveOperador(contain);
                            setState(() {
                              loading = false;
                            });
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    Home(_copController!.operador)));
                          }
                        }, "Entrar");
                      }
                    }
                  }),
                ])),
      ),
    );
  }
}
