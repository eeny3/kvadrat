import 'package:auto_route/annotations.dart';
import 'package:kvadrat/pages/board_page/board_page.dart';
import 'package:kvadrat/pages/login_page.dart';
import 'package:kvadrat/pages/post_game_page/post_game_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoginPage, initial: true),
    AutoRoute(page: BoardPage),
    AutoRoute(page: PostGamePage),
  ],
)
class $AppRouter {}