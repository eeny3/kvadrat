import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kvadrat/main.dart';
import 'package:kvadrat/pages/board_page/board_page_store.dart';
import 'package:kvadrat/pages/board_page/widgets/grid.dart';
import 'package:kvadrat/pages/board_page/widgets/numpad.dart';
import 'package:kvadrat/pages/board_page/widgets/player_info.dart';
import 'package:kvadrat/resources/styles.dart';
import 'package:kvadrat/routing/router.gr.dart';

class BoardPage extends StatefulWidget {
  const BoardPage({Key? key}) : super(key: key);

  @override
  State<BoardPage> createState() => _BoardPageState();
}

class _BoardPageState extends State<BoardPage> {

  final BoardPageStore store = getIt<BoardPageStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: buildBody(),),
    );
  }

  Widget buildBody() {
    return Observer(
      builder: (context) {
        if(store.usedDigits.every((element) => element == true)){
          AutoRouter.of(context).push(PostGameRoute(winner: 'naruto'));
        }
        return Padding(
          padding: const EdgeInsets.all(Insets.s16),
          child: Column(
            children: [
              Expanded(
                flex: 130,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      PlayerInfo(playerId: 0,),
                      PlayerInfo(playerId: 1,),
                    ],
                  ),
                ),
              ),
               const Expanded(
                flex: 257,
                child: Grid(),
              ),
               const Expanded(
                flex: 200,
                child: Numpad(),
              ),
            ],
          ),
        );
      }
    );
  }
}