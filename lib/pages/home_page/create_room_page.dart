import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kvadrat/pages/home_page/widgets/custom_textfield.dart';
import 'package:kvadrat/resources/styles.dart';
import 'package:kvadrat/routing/router.gr.dart';
import 'package:kvadrat/widgets/custom_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController nicknameController = TextEditingController();
  final TextEditingController roomNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(),
    );
  }

  //AutoRouter.of(context).push(const BoardRoute());
  Widget buildBody() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Create Game',
            style: TextStyles.headerBig,
          ),
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            controller: nicknameController,
            hintText: 'Enter your name',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            controller: roomNameController,
            hintText: 'Room name',
          ),
          const SizedBox(
            height: 48,
          ),
          CustomButton(
            onTap: () {
              AutoRouter.of(context).push(const BoardRoute());
            },
            text: 'CREATE',
          ),
        ],
      ),
    );
  }
}
