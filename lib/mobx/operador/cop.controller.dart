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
        dataAdmissao: contain.first.dataAdmissao ?? 0,
        filial: contain.first.filial ?? " ",
        nomeEmpresa: contain.first.nomeEmpresa ?? " ",
        nomeFuncionario: contain.first.nomeFuncionario ?? " ",
      ));
      await _cursosService!.create(Cursos(
        key: contain.first.cursos![0].key ?? " ",
        data: contain.first.cursos![0].data ?? 0,
        certificado: contain.first.cursos![0].certificado ?? " ",
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
