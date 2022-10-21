import 'package:flutter/material.dart';
import 'package:kvadrat/resources/styles.dart';

class PlayerInfo extends StatelessWidget {
  final int playerId;

  const PlayerInfo({Key? key, required this.playerId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment:
          playerId == 0 ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      children: [
        Text(
          '1:30',
          style: TextStyles.timer,
        ),
        const SizedBox(
          height: 4,
        ),
        playerId == 0
            ? Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://thumbs.dreamstime.com/b/default-avatar-profile-vector-user-profile-default-avatar-profile-vector-user-profile-profile-179376714.jpg',
                    ),
                    radius: 9,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    'naruto',
                    style: TextStyles.playerUsername
                        .copyWith(color: Palette.black2),
                  ),
                ],
              )
            : Row(
                children: [
                  Text(
                    'sasuke',
                    style: TextStyles.playerUsername
                        .copyWith(color: Palette.black2),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://thumbs.dreamstime.com/b/default-avatar-profile-vector-user-profile-default-avatar-profile-vector-user-profile-profile-179376714.jpg',
                    ),
                    radius: 9,
                  ),
                ],
              ),
        const SizedBox(
          height: 4,
        ),
        Text(
          playerId == 0 ? 'HORIZONTAL' : 'VERTICAL',
          style: TextStyles.direction.copyWith(color: Palette.black2),
        ),
      ],
    );
  }
}
