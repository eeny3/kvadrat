// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'board_page_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BoardPageStore on _BoardPageStore, Store {
  late final _$selectedTileAtom =
      Atom(name: '_BoardPageStore.selectedTile', context: context);

  @override
  int get selectedTile {
    _$selectedTileAtom.reportRead();
    return super.selectedTile;
  }

  @override
  set selectedTile(int value) {
    _$selectedTileAtom.reportWrite(value, super.selectedTile, () {
      super.selectedTile = value;
    });
  }

  late final _$boardTileValuesAtom =
      Atom(name: '_BoardPageStore.boardTileValues', context: context);

  @override
  ObservableList<int?> get boardTileValues {
    _$boardTileValuesAtom.reportRead();
    return super.boardTileValues;
  }

  @override
  set boardTileValues(ObservableList<int?> value) {
    _$boardTileValuesAtom.reportWrite(value, super.boardTileValues, () {
      super.boardTileValues = value;
    });
  }

  late final _$usedDigitsAtom =
      Atom(name: '_BoardPageStore.usedDigits', context: context);

  @override
  ObservableList<bool> get usedDigits {
    _$usedDigitsAtom.reportRead();
    return super.usedDigits;
  }

  @override
  set usedDigits(ObservableList<bool> value) {
    _$usedDigitsAtom.reportWrite(value, super.usedDigits, () {
      super.usedDigits = value;
    });
  }

  late final _$_BoardPageStoreActionController =
      ActionController(name: '_BoardPageStore', context: context);

  @override
  void select(int index) {
    final _$actionInfo = _$_BoardPageStoreActionController.startAction(
        name: '_BoardPageStore.select');
    try {
      return super.select(index);
    } finally {
      _$_BoardPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void fill(int index, int value) {
    final _$actionInfo = _$_BoardPageStoreActionController.startAction(
        name: '_BoardPageStore.fill');
    try {
      return super.fill(index, value);
    } finally {
      _$_BoardPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedTile: ${selectedTile},
boardTileValues: ${boardTileValues},
usedDigits: ${usedDigits}
    ''';
  }
}
