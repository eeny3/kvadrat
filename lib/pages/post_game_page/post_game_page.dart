import 'package:flutter/material.dart';

class PostGamePage extends StatelessWidget {
  final String winner;
  const PostGamePage({Key? key, required this.winner}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(winner),
      ),
    );
  }
}

