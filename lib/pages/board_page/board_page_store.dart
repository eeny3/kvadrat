import 'package:kvadrat/models/boardTile.dart';
import 'package:mobx/mobx.dart';

part 'board_page_store.g.dart';

class BoardPageStore = _BoardPageStore with _$BoardPageStore;

abstract class _BoardPageStore with Store {
  @observable
  int selectedTile = -1;

  @observable
  ObservableList<int?> boardTileValues = ObservableList.of(
    List.generate(
      9,
      (index) => null,
    ),
  );

  @observable
  ObservableList<bool> usedDigits = ObservableList.of(
    List.generate(
      9,
      (index) => false,
    ),
  );

  @action
  void select(int index) {
    if (selectedTile == index) {
      selectedTile = -1;
    } else {
      selectedTile = index;
    }
  }

  @action
  void fill(int index, int value) {
    selectedTile = -1;
    boardTileValues[index] = index;
    usedDigits[index] = true;
  }
}
