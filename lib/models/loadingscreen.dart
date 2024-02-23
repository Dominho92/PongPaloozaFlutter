import 'package:flutter/material.dart';
import 'dart:async';
import 'package:paloozatestapp/models/second_loading_screen.dart';

class LoadupScreen extends StatelessWidget {
  const LoadupScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: LoadingScreen(
      key: super.key,
      title: "PongPalooza",
    ));
  }
}

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  MyLoadingState createState() => MyLoadingState();
}

class MyLoadingState extends State<LoadingScreen> {
  void _incrementCounter() {
    setState(
      () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SecondLoadingScreen()),
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), _incrementCounter);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 43, 43, 43),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bgONE.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/logo.png', height: 100, width: 100),
                const SizedBox(height: 20),
                const Text("Loading...",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 239, 239, 239))),
                const SizedBox(height: 40),
                const SizedBox(
                  width: 250,
                  child: LinearProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                        Color.fromARGB(255, 0, 132, 221)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
