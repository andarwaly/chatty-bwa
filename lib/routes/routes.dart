import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:chatty_bwa/pages/homepage.dart';
import 'package:chatty_bwa/pages/messages.dart';

class RoutesClasss {
  static String home = '/';
  static String chat = '/messages';

  static String getHomeRoute() => home;
  static String getChatRoute() => chat;

  static List<GetPage> routes = [
    GetPage(
        name: home,
        page: () => const HomePage(),
        transition: Transition.fadeIn),
    GetPage(
      name: chat,
      page: () => const ChatPanel(),
      transition: Transition.fadeIn,
    ),
  ];
}
