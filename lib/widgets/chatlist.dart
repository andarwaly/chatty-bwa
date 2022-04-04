import 'package:flutter/material.dart';
import 'package:chatty_bwa/theme.dart';

class chatReels extends StatelessWidget {
  final String chatImg;
  final String chatFrom;
  final String chatText;
  final String chatTime;
  final bool read;

  const chatReels(
      {required this.chatImg,
      required this.chatFrom,
      required this.chatText,
      required this.chatTime,
      required this.read});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Row(
        children: [
          Image.asset(
            chatImg,
            height: 55,
            width: 55,
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                chatFrom,
                style: title,
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                chatText,
                style: read ? subtitle1 : subtitle2,
              )
            ],
          ),
          const Spacer(),
          Text(
            chatTime,
            style: read ? subtitle1 : subtitle2,
          ),
        ],
      ),
    );
  }
}
