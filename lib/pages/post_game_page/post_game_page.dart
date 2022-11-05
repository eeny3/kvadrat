import 'package:flutter/material.dart';
import 'package:kvadrat/resources/styles.dart';

class PostGamePage extends StatelessWidget {
  final String winner;

  const PostGamePage({Key? key, required this.winner}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      bottom: 0,
                      child: Circle(
                        radius: width * 0.4,
                        borderWidth: 3,
                        borderColor: Colors.grey,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 6,
                      child: Circle(
                        radius: width * 0.6,
                        borderWidth: 10,
                        borderColor: Palette.orange,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      flex: 13,
                      child: Container(),
                    ),
                    Expanded(
                      flex: 7,
                      child: Container(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Circle extends StatelessWidget {
  final double radius;
  final double borderWidth;
  final Color borderColor;
  const Circle({Key? key, required this.radius, required this.borderWidth, required this.borderColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: radius,
      height: radius,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: NetworkImage(
            'https://thumbs.dreamstime.com/b/default-avatar-profile-vector-user-profile-default-avatar-profile-vector-user-profile-profile-179376714.jpg',
          ),
          fit: BoxFit.scaleDown,
        ),
        shape: BoxShape.circle,
        border: Border.all(color: borderColor, width: borderWidth,),
      ),
    );
  }
}
