import 'package:flutter/material.dart';
import 'package:chatty_bwa/theme.dart';
import 'package:chatty_bwa/widgets/chatlist.dart';
import 'package:figma_squircle/figma_squircle.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary100,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 28,
        ),
        foregroundColor: neutral0,
        backgroundColor: secondary100,
        splashColor: primary100,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/images/profile_pic.png',
                height: 100,
                width: 100,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Sabrina Carpenter',
                style: username,
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                'Travel Freelancer',
                style: userbio,
              ),
              const SizedBox(
                height: 30,
              ),
              ClipSmoothRect(
                radius: const SmoothBorderRadius.only(
                    topLeft: SmoothRadius(
                      cornerRadius: 30,
                      cornerSmoothing: 0.6,
                    ),
                    topRight: SmoothRadius(
                      cornerRadius: 30,
                      cornerSmoothing: 0.6,
                    )),
                child: Container(
                  height: 467,
                  // Container List Chat
                  color: neutral0,
                  width: double.infinity,
                  padding: const EdgeInsets.only(
                      top: 24, right: 24, left: 24, bottom: 8),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    padding: const EdgeInsets.only(bottom: 16.0),
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Friends',
                          style: title,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const chatReels(
                          chatImg: 'assets/images/friends1.png',
                          chatFrom: 'Joshuer',
                          chatText: 'Sorry, you’re not my ty...',
                          chatTime: 'Now',
                          read: false,
                        ),
                        const chatReels(
                          chatImg: 'assets/images/friends2.png',
                          chatFrom: 'Gabriella',
                          chatText: 'I saw it clearly and mig...',
                          chatTime: 'Now',
                          read: true,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Groups',
                          style: title,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const chatReels(
                          chatImg: 'assets/images/group1.png',
                          chatFrom: 'Jakarta Fair',
                          chatText: 'Why does everyone ca...',
                          chatTime: '11:11',
                          read: false,
                        ),
                        const chatReels(
                          chatImg: 'assets/images/group2.png',
                          chatFrom: 'Angga',
                          chatText: 'Here here we can go...',
                          chatTime: '07:21',
                          read: true,
                        ),
                        const chatReels(
                          chatImg: 'assets/images/group3.png',
                          chatFrom: 'Bentley',
                          chatText: 'The car which does not...',
                          chatTime: '02:11',
                          read: false,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
