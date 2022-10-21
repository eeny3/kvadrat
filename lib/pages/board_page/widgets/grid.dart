import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kvadrat/main.dart';
import 'package:kvadrat/pages/board_page/board_page_store.dart';
import 'package:kvadrat/resources/styles.dart';

class Grid extends StatefulWidget {
  const Grid({Key? key}) : super(key: key);

  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
  final int boardColumnCount = 3;

  final int boardTilesCount = 9;

  final BoardPageStore store = getIt<BoardPageStore>();

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 1,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Palette.black),
          borderRadius: const BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Observer(builder: (context) {
          return GridView.count(
            padding: const EdgeInsets.all(Insets.s0),
            crossAxisCount: boardColumnCount,
            children: List.generate(boardTilesCount, (index) {
              final BorderRadius tileBorderRadius;
              switch (index) {
                case 0:
                  {
                    tileBorderRadius = const BorderRadius.only(
                      topLeft: Radius.circular(12),
                    );
                    break;
                  }
                case 2:
                  {
                    tileBorderRadius = const BorderRadius.only(
                      topRight: Radius.circular(12),
                    );
                    break;
                  }
                case 6:
                  {
                    tileBorderRadius = const BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                    );
                    break;
                  }
                case 8:
                  {
                    tileBorderRadius = const BorderRadius.only(
                      bottomRight: Radius.circular(12),
                    );
                    break;
                  }
                default:
                  {
                    tileBorderRadius = const BorderRadius.all(
                      Radius.circular(0),
                    );
                  }
              }

              return GestureDetector(
                onTap: () {
                  if (store.boardTileValues[index] == null) {
                    store.select(index);
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Palette.black),
                    borderRadius: tileBorderRadius,
                    color: store.selectedTile == index
                        ? Palette.orange
                        : Palette.white,
                  ),
                  child: Center(
                    child: Text(
                      store.boardTileValues[index] != null
                          ? store.boardTileValues[index].toString()
                          : '',
                      style: TextStyles.gridDigit,
                    ),
                  ),
                ),
              );
            }),
          );
        }),
      ),
    );
  }
}
