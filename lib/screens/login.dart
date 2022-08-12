import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gpi/mobx/auth/auth.controller.dart';
import 'package:gpi/mobx/operador/cop.controller.dart';
import 'package:gpi/screens/home.dart';
import 'package:gpi/util/color.dart';
import 'package:gpi/util/navigator.dart';
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
  AuthController? _authController;
  bool _load = false;

  @override
  void initState() {
    super.initState();
    _operadorController = OperadorController();
    _copController = CopController();
    _authController = AuthController();
    _operadores();
  }

  _operadores() async {
    _operadorController = OperadorController();
    _authController = AuthController();
    _operadorController!.loadOperadores();
  }

  _handkeSignIn(String value) async {
    setState(() {
      _load = true;
    });
    var replace = value.replaceAll('.', '').replaceAll('-', '');
    await _authController!.login(replace, _operadorController);

    setState(() {
      _load = false;
    });

    if (_authController!.operador == null) {
      const snackBar = SnackBar(
          backgroundColor: Colors.red,
          content: Text("erro ao tentar fazer login"));

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      Nav.pushReplacement(context, Home(_authController!.operador));
    }
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
                      Center(
                        child: Text(
                          "CPF não cadastrado na base",
                          style: GoogleFonts.ubuntu(
                              color: $s_warning, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: responsive(context) * 2,
                      ),
                      _load
                          ? Loading()
                          : ElevatedB(() async {
                              _handkeSignIn(cpf_controller.text);
                            }, "Entrar")
                    ]))));
  }
}
