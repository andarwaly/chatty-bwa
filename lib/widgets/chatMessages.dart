import 'package:chatty_bwa/routes/routes.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:chatty_bwa/theme.dart';
import 'package:figma_squircle/figma_squircle.dart';

class chatHeader extends StatelessWidget {
  final String headerImg;
  final String headerName;
  final String headerMember;

  const chatHeader(
      {required this.headerImg,
      required this.headerName,
      required this.headerMember});

  @override
  Widget build(BuildContext context) {
    return ClipSmoothRect(
      radius: const SmoothBorderRadius.only(
          bottomLeft: SmoothRadius(
            cornerRadius: 28,
            cornerSmoothing: 0.6,
          ),
          bottomRight: SmoothRadius(
            cornerRadius: 28,
            cornerSmoothing: 0.6,
          )),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 30,
        ),
        color: neutral0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  Get.toNamed(RoutesClasss.getHomeRoute());
                },
                icon: Icon(Icons.arrow_back_ios)),
            SizedBox(
              width: 16,
            ),
            Image.asset(
              headerImg,
              height: 55,
              width: 55,
            ),
            const SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  headerName,
                  style: title,
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  headerMember,
                  style: subtitle1,
                )
              ],
            ),
            const Spacer(),
            ElevatedButton(
              child: const Icon(
                Icons.call,
                size: 16,
              ),
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: secondary100,
                elevation: 8,
                onPrimary: neutral0,
                fixedSize: const Size(35, 35),
                shape: const CircleBorder(),
                shadowColor: secondary100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class friendBubble extends StatelessWidget {
  const friendBubble({
    required this.userPic,
    required this.textMsg,
    required this.time,
  });

  final String userPic;
  final String textMsg;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(
          bottom: 30,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              userPic,
              height: 40,
              width: 40,
            ),
            const SizedBox(
              width: 12,
            ),
            ClipSmoothRect(
              radius: const SmoothBorderRadius.only(
                  topLeft: SmoothRadius(
                    cornerRadius: 20,
                    cornerSmoothing: 0.6,
                  ),
                  topRight: SmoothRadius(
                    cornerRadius: 24,
                    cornerSmoothing: 0.6,
                  ),
                  bottomRight: SmoothRadius(
                    cornerRadius: 24,
                    cornerSmoothing: 0.6,
                  )),
              child: Container(
                color: neutral20,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 11.0,
                ),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 232,
                  ),
                  child: SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          textMsg,
                          style: bodyL,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          time,
                          style: bodyB,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}

class inputField extends StatelessWidget {
  const inputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        minWidth: 315,
      ),
      child: Container(
        decoration: BoxDecoration(
            color: neutral0,
            borderRadius:
                SmoothBorderRadius(cornerRadius: 20, cornerSmoothing: 0.6)),
        margin: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        padding: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Masukkan pesan anda...',
              style: placeholder,
            ),
            InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('Tap'),
                ));
              },
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: neutral20,
                  ),
                  height: 35,
                  width: 35,
                  child: Icon(
                    Icons.send,
                    color: neutral50,
                    size: 16,
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class userBubble extends StatelessWidget {
  const userBubble({
    required this.userPic,
    required this.textMsg,
    required this.time,
  });

  final String userPic;
  final String textMsg;
  final String time;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(
          bottom: 30,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ClipSmoothRect(
              radius: const SmoothBorderRadius.only(
                  topLeft: SmoothRadius(
                    cornerRadius: 24,
                    cornerSmoothing: 0.6,
                  ),
                  topRight: SmoothRadius(
                    cornerRadius: 20,
                    cornerSmoothing: 0.6,
                  ),
                  bottomLeft: SmoothRadius(
                    cornerRadius: 24,
                    cornerSmoothing: 0.6,
                  )),
              child: Container(
                color: neutral0,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 11.0,
                ),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 360,
                  ),
                  child: SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          textMsg,
                          style: bodyL,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          time,
                          style: bodyB,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Image.asset(
              userPic,
              height: 40,
              width: 40,
            ),
          ],
        ));
  }
}
