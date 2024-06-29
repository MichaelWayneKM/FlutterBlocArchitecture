import 'package:bloc_arch/modules/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BlocArchApp());
}

class BlocArchApp extends StatelessWidget {
  const BlocArchApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc Arch',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.blueAccent),
      ),
      home: const HomePage(),
    );
  }
}