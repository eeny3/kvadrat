import 'package:flutter/material.dart';
import 'package:kvadrat/app.dart';
import 'package:get_it/get_it.dart';
import 'package:kvadrat/pages/board_page/board_page_store.dart';

GetIt getIt = GetIt.instance;

void main() {
  getIt.registerSingleton<BoardPageStore>(BoardPageStore(), signalsReady: true);
  runApp(App());
}


