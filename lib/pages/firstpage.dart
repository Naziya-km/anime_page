import 'dart:html';

import 'package:anime/components/button.dart';
import 'package:flutter/material.dart';

class intropage extends StatelessWidget {
  const intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 191, 106, 97),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 25,
            ),
            Center(
                child: Text("ANIME",
                    style: TextStyle(fontSize: 45, color: Colors.black))),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Center(
                  child: Image.asset(height: 200, 'lib/images/marvel.png')),
            ),
            SizedBox(
              height: 25,
            ),
            Center(
                child: Text(
                    style: TextStyle(
                        fontSize: 45,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                    "CHILL OUT")),
            button(
              text: "get started",
              onTap: () {
                Navigator.pushNamed(context, '/menupage');
              },
            )
          ],
        ),
      ),
    );
  }
}
