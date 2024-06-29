import 'package:bloc_arch/modules/basics_bage.dart';
import 'package:bloc_arch/modules/foundation/ModuleLayout.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModuleLayout(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  height: 150,
                  child: Image.asset("assets/images/wkds-logo-dark.png"),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        "Flutter Bloc",
                        style: TextStyle(color: Colors.white, fontSize: 28),
                      ),
                      Text(
                        "Wayne KM Digital Solutions",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ListWheelScrollView(
                  itemExtent: 80,
                  children: [
                    WheelOption(
                      title: "Basics",
                      action: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const BasicsPage(),
                        ),
                      ),
                    ),
                    WheelOption(
                      title: "Basics",
                      action: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const BasicsPage(),
                        ),
                      ),
                    ),
                    WheelOption(
                      title: "Basics",
                      action: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const BasicsPage(),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class WheelOption extends StatelessWidget {
  const WheelOption({super.key, required this.title, required this.action});

  final String title;
  final VoidCallback action;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: InkWell(
        onTap: action,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(50),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: action,
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
