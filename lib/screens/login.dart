import 'package:flutter/material.dart';
import 'package:gpi/helper/service/operador.service.dart';
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
  OperadorService? _operadorService;

  @override
  void initState() {
    super.initState();
    _operadorController = OperadorController();
    _operadorService = OperadorService();
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
                TField(cpf_controller),
                const SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () async {
                    var contain = _operadorController!.operadores!
                        .where((element) => element.cpf == cpf_controller.text);
                    if (contain.isNotEmpty) {
                      _operadorService!.delete(1);
                      _operadorService!.create(Operador(
                        bx: contain.first.bx ?? " ",
                        cargo: contain.first.cargo ?? " ",
                        certificacaoModNivel1:
                            contain.first.certificacaoModNivel1 ?? " ",
                        certificacaoModNivel2:
                            contain.first.certificacaoModNivel2 ?? " ",
                        certificacaoNeolift:
                            contain.first.certificacaoNeolift ?? " ",
                        certificacaoRegulagemS001:
                            contain.first.certificacaoRegulagemS001 ?? " ",
                        certificacaoS001: contain.first.certificacaoS001 ?? " ",
                        certificacaoS3600:
                            contain.first.certificacaoS3600 ?? " ",
                        certificacaoS5500:
                            contain.first.certificacaoS5500 ?? " ",
                        certificacaoS7050:
                            contain.first.certificacaoS7050 ?? " ",
                        certificacaoS9300:
                            contain.first.certificacaoS9300 ?? " ",
                        certificacaoS9500:
                            contain.first.certificacaoS9500 ?? " ",
                        cmgEntry: contain.first.cmgEntry ?? " ",
                        comissionamentoS001:
                            contain.first.comissionamentoS001 ?? " ",
                        coordenador: contain.first.coordenador ?? " ",
                        cpf: contain.first.cpf ?? " ",
                        dataAdmissao: contain.first.dataAdmissao ?? " ",
                        es1CompactoInstalacao:
                            contain.first.es1CompactoInstalacao ?? " ",
                        es1Montagem: contain.first.es1Montagem ?? " ",
                        es3Instalacao: contain.first.es3Instalacao ?? " ",
                        es5CompactoInstalacao:
                            contain.first.es5CompactoInstalacao ?? " ",
                        es5Instalacao: contain.first.es5Instalacao ?? " ",
                        escadaInstalacao: contain.first.escadaInstalacao ?? " ",
                        filial: contain.first.filial ?? " ",
                        guiaS001: contain.first.guiaS001 ?? " ",
                        icamento: contain.first.icamento ?? " ",
                        ipa: contain.first.ipa ?? " ",
                        mx: contain.first.mx ?? " ",
                        neolift: contain.first.neolift ?? " ",
                        nomeEmpresa: contain.first.nomeEmpresa ?? " ",
                        nomeFuncionario: contain.first.nomeFuncionario ?? " ",
                        nr10: contain.first.nr10 ?? " ",
                        nr35: contain.first.nr35 ?? " ",
                        reciclagemIcamento:
                            contain.first.reciclagemIcamento ?? " ",
                        reciclagemIpa: contain.first.reciclagemIpa ?? " ",
                        reciclagemNr10: contain.first.reciclagemNr10 ?? " ",
                        recilagemNr35: contain.first.recilagemNr35 ?? " ",
                        s001: contain.first.s001 ?? " ",
                        s3600: contain.first.s3600 ?? " ",
                        s5500: contain.first.s5500 ?? " ",
                        s7050: contain.first.s7050 ?? " ",
                        status: contain.first.status ?? " ",
                        supervisor: contain.first.supervisor ?? " ",
                        tbm: contain.first.tbm ?? " ",
                        tipo: contain.first.tipo ?? " ",
                        tm1: contain.first.tm1 ?? " ",
                        tm2: contain.first.tm2 ?? " ",
                        tm3: contain.first.tm3 ?? " ",
                        tmm: contain.first.tmm ?? " ",
                        treinamentoRegulagem:
                            contain.first.treinamentoRegulagem ?? " ",
                      ));
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
