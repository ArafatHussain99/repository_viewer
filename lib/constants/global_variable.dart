import 'package:flutter/material.dart';

String baseUri = 'http://47.128.77.138:3333';

class AppConstants {
  static const String base64Prefix = "data:image/jpeg;base64,";
}

class GlobalVariables {
  static const Color primaryColor = Color(0xff005CAF);
  static const Color primaryColorInvalid = Color(0xffC6DDF1);
  static const Color noticeColor = Color(0xffFFFBF0);
  static const Color backgroundBlue = Color(0xFFEFF6FC);
  static const Color secondaryColor = Color(0xffFF8800);
  static const Color secondaryColorInvalid = Color(0xffFFF9F2);
  static const Color unverifiedColor = Color(0xffBFC1C2);
  static const Color verifiedGreen = Color(0xff00A849);
  static const Color tabsUnselected = Color(0xff3B84C6);
  static const Color naturalColor = Color(0xff999EA1);
  static const Color naturalColorLite = Color(0xffF2F2F2);
  static const Color borderColorBlue = Color(0xff74ABDC);
  static const Color activeStateColorYellow = Color(0xffFFE195);
  static const Color rejectedBoxColor = Color(0xffFFF9F2);
  static const Color rejectedBoxBorderColor = Color(0xffFFE0BE);
  static const Color acceptedBoxColor = Color(0xffF3FDF7);
  static const Color acceptedBoxBorderColor = Color(0xff81D3A5);
  static const Color pendingYellowColor = Color(0xffFFC22B);
  static const Color pendingYellowBoxColor = Color(0xffFFFBF0);

  static int loader = 0;
  static const Set<String> specialCharacters = {
    '!',
    '@',
    '#',
    '\$',
    '%',
    '^',
    '&',
    '*',
    '_',
    '-',
    '+',
    '=',
    '|',
    '\\',
    '/',
    '?',
    ':',
    ';',
    ',',
    '.'
  };
  static const Set<String> numbers = {
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '0'
  };

  //images
  static String banner1 = 'assets/images/banner.png';
  static String banner2 = 'assets/images/banner2.png';
  static String banner3 = 'assets/images/banner3.png';
  static String logo = 'assets/images/Layer_1.png';

  //2API validators
  static bool mobileAPIWorkingFine = false;
  static bool passwordAPIWorkingFine = false;
}

final urlImages = [
  'https://images.unsplash.com/photo-1681419801930-d21a0c9aef77?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1661956601031-4cf09efadfce?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxNnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1681470712645-c9a77f35cf5a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyNXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60',
  'https://plus.unsplash.com/premium_photo-1681140029717-094dacd4b0f8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1M3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60'
];

final urlText = [
  'Young boy in a Tunnel',
  'Man scrolling through a Tab',
  'Bird sitting on a tree',
  'Coconut tree'
];

final List list = [{}];

final List<Map<String, Object>> brandList = [
  {'id': 012332, 'brand': 'Shikho', 'type': 'Education'},
  {'id': 012332, 'brand': 'SouthEast', 'type': 'Bank'},
  {'id': 012332, 'brand': '10MS', 'type': 'Education'},
  {'id': 012332, 'brand': 'Daily Star', 'type': 'Heatlh'},
  {'id': 012332, 'brand': 'Patanjali', 'type': 'Health'},
  {'id': 012332, 'brand': 'Uddokto Academy', 'type': 'Education'},
  {'id': 012332, 'brand': 'Hishabi', 'type': 'App'},
  {'id': 012332, 'brand': 'Prime Bank', 'type': 'Bank'},
  {'id': 012332, 'brand': 'City Bank', 'type': 'Bank'},
];
final List existingReferrals = ['R017', 'R018', 'R010'];

// ignore: camel_case_types
class data {
  static int filterBrandSelected = -1;
  static String referralPrograms = 'R017';
  static const String uri = 'http://18.143.240.30:8002/api';
}
