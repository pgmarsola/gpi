import 'package:gpi/helper/service/cursos.service.dart';
import 'package:mobx/mobx.dart';

import '../../helper/service/operador.service.dart';
import '../../model/cursos.model.dart';
import '../../model/operador.model.dart';

part 'cop.controller.g.dart';

class CopController = _CopControllerBase with _$CopController;

abstract class _CopControllerBase with Store {
  final OperadorService? _operadorService = OperadorService();
  final CursosService? _cursosService = CursosService();

  _CopControllerBase() {}

  @observable
  Operador? operador;

  @observable
  ObservableList<Operador>? operadores;

  @observable
  Cursos? curso;

  @observable
  ObservableList<Cursos>? cursos;

  @observable
  bool load = false;

  @action
  saveOperador(Iterable<Operador> contain) async {
    load = true;
    if (contain.isNotEmpty) {
      await _operadorService!.delete(1);
      await _cursosService!.delete(1);
      await _operadorService!.create(Operador(
        cargo: contain.first.cargo ?? " ",
        status: contain.first.status ?? 0,
        supervisor: contain.first.supervisor ?? " ",
        tipo: contain.first.tipo ?? " ",
        coordenador: contain.first.coordenador ?? " ",
        cpf: contain.first.cpf ?? " ",
        dataAdmissao: contain.first.dataAdmissao ?? " ",
        filial: contain.first.filial ?? " ",
        nomeEmpresa: contain.first.nomeEmpresa ?? " ",
        nomeFuncionario: contain.first.nomeFuncionario ?? " ",
      ));
      await _cursosService!.create(Cursos(
        bx: contain.first.cursos![0].bx ?? " ",
        certificacaoModNivel1:
            contain.first.cursos![0].certificacaoModNivel1 ?? " ",
        certificacaoModNivel2:
            contain.first.cursos![0].certificacaoModNivel2 ?? " ",
        certificacaoNeolift:
            contain.first.cursos![0].certificacaoNeolift ?? " ",
        certificacaoRegulagemS001:
            contain.first.cursos![0].certificacaoRegulagemS001 ?? " ",
        certificacaoS001: contain.first.cursos![0].certificacaoS001 ?? " ",
        certificacaoS3600: contain.first.cursos![0].certificacaoS3600 ?? " ",
        certificacaoS5500: contain.first.cursos![0].certificacaoS5500 ?? " ",
        certificacaoS7050: contain.first.cursos![0].certificacaoS7050 ?? " ",
        certificacaoS9300: contain.first.cursos![0].certificacaoS9300 ?? " ",
        certificacaoS9500: contain.first.cursos![0].certificacaoS9500 ?? " ",
        cmgEntry: contain.first.cursos![0].cmgEntry ?? " ",
        comissionamentoS001:
            contain.first.cursos![0].comissionamentoS001 ?? " ",
        es1CompactoInstalacao:
            contain.first.cursos![0].es1CompactoInstalacao ?? " ",
        es1Montagem: contain.first.cursos![0].es1Montagem ?? " ",
        es3Instalacao: contain.first.cursos![0].es3Instalacao ?? " ",
        es5CompactoInstalacao:
            contain.first.cursos![0].es5CompactoInstalacao ?? " ",
        es5Instalacao: contain.first.cursos![0].es5Instalacao ?? " ",
        escadaInstalacao: contain.first.cursos![0].escadaInstalacao ?? " ",
        guiaS001: contain.first.cursos![0].guiaS001 ?? " ",
        icamento: contain.first.cursos![0].icamento ?? " ",
        ipa: contain.first.cursos![0].ipa ?? " ",
        mx: contain.first.cursos![0].mx ?? " ",
        neolift: contain.first.cursos![0].neolift ?? " ",
        nr10: contain.first.cursos![0].nr10 ?? " ",
        nr35: contain.first.cursos![0].nr35 ?? " ",
        reciclagemIcamento: contain.first.cursos![0].reciclagemIcamento ?? " ",
        reciclagemIpa: contain.first.cursos![0].reciclagemIpa ?? " ",
        reciclagemNr10: contain.first.cursos![0].reciclagemNr10 ?? " ",
        recilagemNr35: contain.first.cursos![0].recilagemNr35 ?? " ",
        s001: contain.first.cursos![0].s001 ?? " ",
        s3600: contain.first.cursos![0].s3600 ?? " ",
        s5500: contain.first.cursos![0].s5500 ?? " ",
        s7050: contain.first.cursos![0].s7050 ?? " ",
        tbm: contain.first.cursos![0].tbm ?? " ",
        tm1: contain.first.cursos![0].tm1 ?? " ",
        tm2: contain.first.cursos![0].tm2 ?? " ",
        tm3: contain.first.cursos![0].tm3 ?? " ",
        tmm: contain.first.cursos![0].tmm ?? " ",
        treinamentoRegulagem:
            contain.first.cursos![0].treinamentoRegulagem ?? " ",
      ));
      await getOperador();
    }
    load = false;
  }

  @action
  getOperador() async {
    operadores = ObservableList<Operador>.of(await _operadorService!.all());
    cursos = ObservableList<Cursos>.of(await _cursosService!.all());

    if (operadores!.isNotEmpty) {
      operador = operadores![0];
      curso = cursos![0];
    }
  }
}
