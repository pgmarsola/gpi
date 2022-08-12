import 'package:gpi/helper/service/cursos.service.dart';
import 'package:gpi/mobx/operador/cop.controller.dart';
import 'package:gpi/mobx/operador/operador.controller.dart';
import 'package:mobx/mobx.dart';

import '../../helper/service/operador.service.dart';
import '../../model/cursos.model.dart';
import '../../model/operador.model.dart';

part 'auth.controller.g.dart';

class AuthController = _AuthControllerBase with _$AuthController;

abstract class _AuthControllerBase with Store {
  final CopController? _copController = CopController();
  final OperadorController? _operadorController = OperadorController();

  _AuthControllerBase() {}

  @observable
  Operador? operador;

  @observable
  ObservableList<Operador>? operadores;

  @observable
  bool load = false;

  @action
  login(
    String value,
    OperadorController? c,
  ) async {
    load = true;

    if (c!.operadores!.isNotEmpty) {
      var data = c.operadores!.where((element) => element.cpf == value);
      if (data.isNotEmpty) {
        await _copController!.saveOperador(data);
        if (_copController!.operador != null) {
          operador = _copController!.operador;
        }
      }
    }
    load = false;
  }
}
