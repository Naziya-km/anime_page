import 'package:anime/pages/firstpage.dart';
import 'package:anime/pages/menupage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const homepage());
}

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: intropage(), routes: {
      '/intropage': (context) => const intropage(),
      '/menupage': (context) => const menupage()
    });
  }
}