import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text(
                "Tell us more about yourself",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.centerRight,
              // child: IconButton(
              //   // onPressed: () {
              //   //   Navigator.push(
              //   //     context,
              //   //     // MaterialPageRoute(builder: (_) => NextDetailScreen()),
              //   //   );
              //   // },
              //   icon: Icon(
              //     Icons.arrow_forward_sharp,
              //     color: Colors.white,
              //   ),
              //   iconSize: 50.0,
              // ),
            ),
          ]),
    );
  }
}
