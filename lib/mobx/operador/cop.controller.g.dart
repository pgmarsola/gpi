// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cop.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CopController on _CopControllerBase, Store {
  late final _$operadorAtom =
      Atom(name: '_CopControllerBase.operador', context: context);

  @override
  Operador? get operador {
    _$operadorAtom.reportRead();
    return super.operador;
  }

  @override
  set operador(Operador? value) {
    _$operadorAtom.reportWrite(value, super.operador, () {
      super.operador = value;
    });
  }

  late final _$operadoresAtom =
      Atom(name: '_CopControllerBase.operadores', context: context);

  @override
  ObservableList<Operador>? get operadores {
    _$operadoresAtom.reportRead();
    return super.operadores;
  }

  @override
  set operadores(ObservableList<Operador>? value) {
    _$operadoresAtom.reportWrite(value, super.operadores, () {
      super.operadores = value;
    });
  }

  late final _$cursoAtom =
      Atom(name: '_CopControllerBase.curso', context: context);

  @override
  Cursos? get curso {
    _$cursoAtom.reportRead();
    return super.curso;
  }

  @override
  set curso(Cursos? value) {
    _$cursoAtom.reportWrite(value, super.curso, () {
      super.curso = value;
    });
  }

  late final _$cursosAtom =
      Atom(name: '_CopControllerBase.cursos', context: context);

  @override
  ObservableList<Cursos>? get cursos {
    _$cursosAtom.reportRead();
    return super.cursos;
  }

  @override
  set cursos(ObservableList<Cursos>? value) {
    _$cursosAtom.reportWrite(value, super.cursos, () {
      super.cursos = value;
    });
  }

  late final _$organizedAtom =
      Atom(name: '_CopControllerBase.organized', context: context);

  @override
  ObservableList<Cursos>? get organized {
    _$organizedAtom.reportRead();
    return super.organized;
  }

  @override
  set organized(ObservableList<Cursos>? value) {
    _$organizedAtom.reportWrite(value, super.organized, () {
      super.organized = value;
    });
  }

  late final _$loadAtom =
      Atom(name: '_CopControllerBase.load', context: context);

  @override
  bool get load {
    _$loadAtom.reportRead();
    return super.load;
  }

  @override
  set load(bool value) {
    _$loadAtom.reportWrite(value, super.load, () {
      super.load = value;
    });
  }

  late final _$saveOperadorAsyncAction =
      AsyncAction('_CopControllerBase.saveOperador', context: context);

  @override
  Future saveOperador(Iterable<Operador>? contain) {
    return _$saveOperadorAsyncAction.run(() => super.saveOperador(contain));
  }

  late final _$getOperadorAsyncAction =
      AsyncAction('_CopControllerBase.getOperador', context: context);

  @override
  Future getOperador() {
    return _$getOperadorAsyncAction.run(() => super.getOperador());
  }

  late final _$getCursosAsyncAction =
      AsyncAction('_CopControllerBase.getCursos', context: context);

  @override
  Future getCursos() {
    return _$getCursosAsyncAction.run(() => super.getCursos());
  }

  @override
  String toString() {
    return '''
operador: ${operador},
operadores: ${operadores},
curso: ${curso},
cursos: ${cursos},
organized: ${organized},
load: ${load}
    ''';
  }
}
