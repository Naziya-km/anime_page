import 'dart:html';

import 'package:anime/components/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class intropage extends StatelessWidget {
  const intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 191, 106, 97),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                    "https://www.liveabout.com/thmb/EuzMFCouNw8IFMXsJj9rttEvCcg=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-148520785-5ad9029f43a1030037b76966-5b92e966c9e77c008294ae38.jpg"),
                SizedBox(
                  height: 25,
                ),

                // Center(
                //     child: Text("ANIME",
                //         style: TextStyle(fontSize: 45, color: Colors.black))),
                // SizedBox(height: 25),
                // Padding(
                //   padding: const EdgeInsets.all(25.0),
                //   child: Center(
                //       child: Image.asset(height: 200, 'lib/images/marvel.png')),
                // ),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
            Center(
                child: Text(
                    style: TextStyle(
                        fontSize: 45,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                    "ANIME")),
            SizedBox(height: 25),
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
