// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../pages/board_page/board_page.dart' as _i2;
import '../pages/login_page.dart' as _i1;
import '../pages/post_game_page/post_game_page.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.LoginPage(),
      );
    },
    BoardRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.BoardPage(),
      );
    },
    PostGameRoute.name: (routeData) {
      final args = routeData.argsAs<PostGameRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.PostGamePage(
          key: args.key,
          winner: args.winner,
        ),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          LoginRoute.name,
          path: '/',
        ),
        _i4.RouteConfig(
          BoardRoute.name,
          path: '/board-page',
        ),
        _i4.RouteConfig(
          PostGameRoute.name,
          path: '/post-game-page',
        ),
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i4.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.BoardPage]
class BoardRoute extends _i4.PageRouteInfo<void> {
  const BoardRoute()
      : super(
          BoardRoute.name,
          path: '/board-page',
        );

  static const String name = 'BoardRoute';
}

/// generated route for
/// [_i3.PostGamePage]
class PostGameRoute extends _i4.PageRouteInfo<PostGameRouteArgs> {
  PostGameRoute({
    _i5.Key? key,
    required String winner,
  }) : super(
          PostGameRoute.name,
          path: '/post-game-page',
          args: PostGameRouteArgs(
            key: key,
            winner: winner,
          ),
        );

  static const String name = 'PostGameRoute';
}

class PostGameRouteArgs {
  const PostGameRouteArgs({
    this.key,
    required this.winner,
  });

  final _i5.Key? key;

  final String winner;

  @override
  String toString() {
    return 'PostGameRouteArgs{key: $key, winner: $winner}';
  }
}
