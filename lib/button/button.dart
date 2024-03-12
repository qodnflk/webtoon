import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Color bgcolor;
  final Color txcolor;

  const MyButton({
    super.key,
    required this.text,
    required this.bgcolor,
    required this.txcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        child: Text(
          text,
          style: TextStyle(
            color: txcolor,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
