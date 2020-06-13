// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppController on _AppControllerBase, Store {
  final _$pessoaAtom = Atom(name: '_AppControllerBase.pessoa');

  @override
  dynamic get pessoa {
    _$pessoaAtom.reportRead();
    return super.pessoa;
  }

  @override
  set pessoa(dynamic value) {
    _$pessoaAtom.reportWrite(value, super.pessoa, () {
      super.pessoa = value;
    });
  }

  @override
  String toString() {
    return '''
pessoa: ${pessoa}
    ''';
  }
}
