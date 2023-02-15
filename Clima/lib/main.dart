import 'package:flutter/material.dart';
import 'package:clima/screens/loading_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final ThemeData theme = ThemeData();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.white,
        ),
      ),
      home: LoadingScreen(),
    );
  }
}
