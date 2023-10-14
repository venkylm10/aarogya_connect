import 'package:flutter/material.dart';

class DonateScreen extends StatelessWidget {
  static const id = "/home/donate";
  const DonateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Donate"),
      ),
    );
  }
}
