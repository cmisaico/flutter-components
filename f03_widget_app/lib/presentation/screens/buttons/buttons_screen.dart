import 'package:flutter/material.dart';

class ButtonScreen extends StatelessWidget {
  static String name = 'button_screen';

  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons"),
      ),
      body: const Placeholder(),
    );
  }
}
