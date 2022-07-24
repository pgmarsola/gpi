import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  keyboardType: TextInputType.number,
                  controller: cpf_controller,
                  decoration: const InputDecoration(
                    labelText: "CPF",
                  ),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blue, fontSize: 12),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Campo obrigatório";
                    }
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    var contain = _operadorController!.operadores!
                        .where((element) => element.cpf == cpf_controller.text);
                    if (contain.isNotEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('cpf cadastrado na base')),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('cpf invalido')),
                      );
                    }
                  },
                  child: const Text('Submit'),
                ),
              ],
            )),
      ),
    );
  }
}
