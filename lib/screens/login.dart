import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gpi/mobx/operador/cop.controller.dart';
import 'package:gpi/screens/home.dart';
import 'package:gpi/util/color.dart';
import 'package:gpi/util/responsive.dart';
import 'package:gpi/widget/button/elevatedb.dart';
import 'package:gpi/widget/loading.dart';
import 'package:gpi/widget/logo.dart';
import 'package:gpi/widget/tfield.dart';

import '../mobx/operador/operador.controller.dart';

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
  bool error = false;

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
                        return Observer(builder: (_) => SizedBox.shrink());
                      } else {
                        return error
                            ? Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Center(
                                    child: Text(
                                      "CPF não cadastrado na base",
                                      style: GoogleFonts.ubuntu(
                                          color: $s_warning,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: responsive(context) * 2,
                                  ),
                                  ElevatedB(() async {
                                    setState(() {
                                      loading = true;
                                    });
                                    var contain = _operadorController!
                                        .operadores!
                                        .where((element) =>
                                            element.cpf ==
                                            cpf_controller.text
                                                .replaceAll('.', '')
                                                .replaceAll('-', ''));
                                    if (contain.isNotEmpty) {
                                      await _copController!
                                          .saveOperador(contain);
                                      setState(() {
                                        loading = false;
                                      });
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) => Home(
                                                  _copController!.operador,
                                                  _copController!.cursos)));
                                    } else {
                                      setState(() {
                                        error = true;
                                      });
                                    }
                                  }, "Entrar")
                                ],
                              )
                            : ElevatedB(() async {
                                setState(() {
                                  loading = true;
                                });
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
                                              _copController!.operador,
                                              _copController!.cursos)));
                                } else {
                                  setState(() {
                                    error = true;
                                  });
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
