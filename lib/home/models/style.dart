// ignore_for_file: avoid_unnecessary_containers
import 'package:flutter/material.dart';

// ----------------- Start  Logo Widget Vertikal ----------------- //
Widget logoWidget() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Image.asset('assets/logo.png', height: 50, width: 50),
      const SizedBox(width: 10),
      const Text("Pong",
          style: TextStyle(
              fontFamily: "Comfortaa",
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 255, 255))),
      const Text("Palooza",
          style: TextStyle(
              fontFamily: "Comforter",
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 255, 255))),
    ],
  );
}
// ----------------- End of Logo Widget Vertikal ----------------- //

// ----------------- Start Logo Widget Horizontal ----------------- //

Widget logoWidgetHorizontal() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset('assets/logo.png', height: 95, width: 95),
      const SizedBox(height: 10),
      const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Pong",
              style: TextStyle(
                  fontFamily: "Comfortaa",
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255))),
          Text("Palooza",
              style: TextStyle(
                  fontFamily: "Comforter",
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255))),
        ],
      ),
    ],
  );
}

// ----------------- End of Logo Widget Horizontal ---------------- //

// ----------------- Start Text Styles ----------------- //

const heroLine = TextStyle(
    color: Color.fromARGB(255, 239, 239, 239),
    fontSize: 20,
    fontWeight: FontWeight.bold);

// ----------------- End of Text Styles ---------------- //

// ----------------- Custom AppBar ----------------- //

PreferredSizeWidget customAppBar(String title) {
  return AppBar(
      toolbarHeight: 40,
      centerTitle: true,
      backgroundColor: Color.fromARGB(255, 119, 119, 119),
      title: Text(
        title,
        style: const TextStyle(color: Color.fromARGB(255, 5, 5, 5)),
      ));
}
// ----------------- End of Custom AppBar ------------ //