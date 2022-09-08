import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  width: 2.0,
                  // assign the color to the border color
                  color: const Color.fromARGB(255, 221, 221, 221),
                ),
              ),
              width: 250,
              height: 250,
            ),
          ),
          PageView(
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            children: [
              Center(
                child: Image.asset('assets/pizza1.png',
                    width: 240.0, height: 240.0),
              ),
              Center(
                child: Image.asset('assets/pizza1.png',
                    width: 240.0, height: 240.0),
              ),
              Center(
                child: Image.asset('assets/pizza1.png',
                    width: 240.0, height: 240.0),
              ),
            ],
          ),
          Center(
            child: Badge(
              position: BadgePosition.bottomEnd(end: 15, bottom: 25),
              badgeColor: const Color(0xFF05F283),
              badgeContent: Container(
                width: 30,
                height: 30,
                alignment: Alignment.center,
                child: const Icon(
                  Icons.add,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              child: SizedBox(
                width: 250,
                height: 250,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
