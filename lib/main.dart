import 'package:flutter/material.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import './helper/starter.dart';
import '../screen/authscreen.dart';
import '../screen/detailscreen.dart';

void main() {
  runApp(YourPartner());
}

class YourPartner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Make your partner",
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.frederickaTheGreatTextTheme(
            Theme.of(context)
                .textTheme, // If this is not set, then ThemeData.light().textTheme is used.
          ),
        ),
        home: Builder(
          builder: (context) => IntroViewsFlutter(
            pages,
            showNextButton: true,
            showBackButton: false,
            onTapDoneButton: () {
              // Use Navigator.pushReplacement if you want to dispose the latest route
              // so the user will not be able to slide back to the Intro Views.
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => DetailScreen()),
              );
            },
            pageButtonTextStyles: const TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
        ));
  }
}
