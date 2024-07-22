import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class button extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const button({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(45)),
        padding: EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(style: TextStyle(color: Colors.white), text),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.arrow_forward,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
