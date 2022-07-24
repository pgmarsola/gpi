import '../../model/operador.model.dart';

abstract class IOperadorRepository {
  Future<List<Operador>> fetchOperadores();
}
