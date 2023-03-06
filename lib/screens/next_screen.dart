import 'package:flutter/material.dart';

class NextScreenScreen extends StatefulWidget {
  const NextScreenScreen({super.key});

  @override
  State<NextScreenScreen> createState() => _NextScreenScreenState();
}

class _NextScreenScreenState extends State<NextScreenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data "),
      ),
    );
  }
}
