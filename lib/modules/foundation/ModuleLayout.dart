import 'package:flutter/material.dart';

class ModuleLayout extends StatelessWidget {
  const ModuleLayout({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            colors: [
              Colors.black,
              Color.lerp(Colors.deepPurpleAccent.shade700, Colors.black, 0.78)!,
              Color.lerp(Colors.deepPurpleAccent.shade700, Colors.black, 0.90)!,
            ],
          ),
        ), child: child,);
  }
}