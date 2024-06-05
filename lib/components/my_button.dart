import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, required this.text, required this.onTap});

  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 248, 241, 241),
            borderRadius: BorderRadius.circular(20)),
        height: 60,
        width: 120,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 70),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
