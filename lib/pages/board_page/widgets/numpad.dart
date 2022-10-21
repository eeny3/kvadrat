import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kvadrat/main.dart';
import 'package:kvadrat/pages/board_page/board_page_store.dart';
import 'package:kvadrat/resources/styles.dart';

class Numpad extends StatelessWidget {

  const Numpad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: GridTile(
                  number: 1,
                ),
              ),
              Expanded(
                child: GridTile(
                  number: 2,
                ),
              ),
              Expanded(
                child: GridTile(
                  number: 3,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: GridTile(
                  number: 4,
                ),
              ),
              Expanded(
                child: GridTile(
                  number: 5,
                ),
              ),
              Expanded(
                child: GridTile(
                  number: 6,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: GridTile(
                  number: 7,
                ),
              ),
              Expanded(
                child: GridTile(
                  number: 8,
                ),
              ),
              Expanded(
                child: GridTile(
                  number: 9,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class GridTile extends StatelessWidget {
  final int number;
  final BoardPageStore store = getIt<BoardPageStore>();

  GridTile({Key? key, required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return GestureDetector(
        onTap: () {
          if (store.selectedTile != -1 && !store.usedDigits[number - 1]) {
            store.boardTileValues[store.selectedTile] = number;
            store.usedDigits[number - 1] = true;
            store.selectedTile = -1;
          }
        },
        child: Center(
          child: Text(
            number.toString(),
            style: TextStyles.numpadDigit.copyWith(
              color: store.usedDigits[number - 1] ? Palette.grey : Palette.black,
            ),
          ),
        ),
      );
    });
  }
}
