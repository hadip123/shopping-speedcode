import 'package:flutter/material.dart';
import 'package:shopping/home_screen.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: const HomeScreen(),
    theme: ThemeData(
        colorScheme:
            const ColorScheme.light(primary: Color.fromARGB(255, 65, 33, 243))),
  ));
}
