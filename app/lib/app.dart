import 'package:flutter/material.dart';

class MainApp extends StatelessWidget {
  final String title;

  const MainApp({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World! ($title)'),
        ),
      ),
    );
  }
}
