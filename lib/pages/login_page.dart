import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kvadrat/routing/router.gr.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return GestureDetector(
      onTap: (){
        AutoRouter.of(context).push(const BoardRoute());
      },
      child: const Center(
        child: Text('BOARD'),
      ),
    );
  }
}