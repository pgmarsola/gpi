import 'package:gpi/mobx/operador/operador.repository.dart';
import 'package:mobx/mobx.dart';

import '../../model/operador.model.dart';

part 'operador.controller.g.dart';

class OperadorController = _OperadorControllerBase with _$OperadorController;

abstract class _OperadorControllerBase with Store {
  OperadorRepository? _operadorRepository;

  _OperadorControllerBase() {
    _operadorRepository = OperadorRepository();
  }

  @observable
  Operador? operador;

  @observable
  ObservableList<Operador>? operadores;

  @observable
  bool load = false;

  @action
  loadOperadores() async {
    load = true;

    operadores = ObservableList<Operador>.of(
        await _operadorRepository!.fetchOperadores());

    if (operadores!.isNotEmpty) {
      load = false;
    }

    load = false;
  }
}
