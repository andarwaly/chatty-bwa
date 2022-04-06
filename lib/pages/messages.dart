import 'package:flutter/material.dart';
import 'package:chatty_bwa/theme.dart';
import 'package:chatty_bwa/widgets/chatMessages.dart';
import 'package:chatty_bwa/pages/homepage.dart';

class ChatPanel extends StatelessWidget {
  const ChatPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SafeArea(child: inputField()),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: neutral10,
      appBar: const PreferredSize(
          child: SafeArea(
            child: chatHeader(
              headerImg: 'assets/images/group1.png',
              headerName: 'Kumogakure',
              headerMember: '69,209 members',
            ),
          ),
          preferredSize: Size.fromHeight(115)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 30),
        child: Column(
          children: const [
            friendBubble(
              userPic: 'assets/images/friends1.png',
              textMsg: 'Gimana bro kabarnya?',
              time: '02:30',
            ),
            friendBubble(
              userPic: 'assets/images/friends3.png',
              textMsg: 'Aman coyyyy ini Yoshi mokel makan putung rokok cobaa',
              time: '03:11',
            ),
            userBubble(
              userPic: 'assets/images/profile_pic.png',
              textMsg: 'Aman coyyyy ini Yoshi mokel makan putung rokok cobaa',
              time: '03:12',
            ),
            friendBubble(
              userPic: 'assets/images/friends2.png',
              textMsg: 'Emang paling unik abang yoshi ini',
              time: '03:13',
            ),
          ],
        ),
      ),
    );
  }
}
