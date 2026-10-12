import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Nama saya Widya",
      style: TextStyle(color: Colors.red, fontSize: 14),
      textAlign: TextAlign.center,
    );
  }
}
