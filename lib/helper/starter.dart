import 'package:flutter/material.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';

final pages = [
  PageViewModel(
    pageColor: const Color(0xFF03A9F4),
    // iconImageAssetPath: 'assets/air-hostess.png',
    bubble: Image.asset('assets/partner.jpg'),
    body: const Text(
      "it's high time to connecting with same minded people",
    ),
    title: const Text(
      'Partner',
    ),
    // titleTextStyle:
    //     const TextStyle(fontFamily: 'MyFont', color: Colors.white),
    // bodyTextStyle: const TextStyle(fontFamily: 'MyFont', color: Colors.white),
    mainImage: Image.asset(
      'assets/partner.jpg',
      height: 285.0,
      width: 285.0,
      alignment: Alignment.center,
    ),
  ),
  PageViewModel(
    pageColor: const Color(0xFF8BC34A),
    iconImageAssetPath: 'assets/partner.jpg',
    body: const Text(
      'We  work  for  the  comfort ,  enjoy  your  stay  at  our  beautiful  hotels',
    ),
    title: const Text('Hotels'),
    mainImage: Image.asset(
      'assets/partner.jpg',
      height: 285.0,
      width: 285.0,
      alignment: Alignment.center,
    ),
    // titleTextStyle:
    //     const TextStyle(fontFamily: 'MyFont', color: Colors.white),
    // bodyTextStyle: const TextStyle(fontFamily: 'MyFont', color: Colors.white),
  ),
  PageViewModel(
    pageBackground: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          stops: [0.0, 1.0],
          begin: FractionalOffset.topCenter,
          end: FractionalOffset.bottomCenter,
          tileMode: TileMode.repeated,
          colors: [
            Colors.orange,
            Colors.pinkAccent,
          ],
        ),
      ),
    ),
    iconImageAssetPath: 'assets/partner.jpg',
    body: const Text(
      'Easy  cab  booking  at  your  doorstep  with  cashless  payment  system',
    ),
    title: const Text('Cabs'),
    mainImage: Image.asset(
      'assets/partner.jpg',
      height: 285.0,
      width: 285.0,
      alignment: Alignment.center,
    ),
    // titleTextStyle:
    //     const TextStyle(fontFamily: 'MyFont', color: Colors.white),
    // bodyTextStyle: const TextStyle(fontFamily: 'MyFont', color: Colors.white),
  ),
];
