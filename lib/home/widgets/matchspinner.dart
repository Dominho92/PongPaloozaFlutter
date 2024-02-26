import 'package:flutter/material.dart';

Widget createMatchSpinner(String spinnerTitle) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 140, 0),
        child: Text(
          spinnerTitle,
          style: const TextStyle(
              color: Color.fromARGB(255, 239, 239, 239),
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
      ),
      const SizedBox(height: 10),
      Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage("assets/images/rec109.png"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        width: 310,
        height: 145,
        child: ListWheelScrollView(
          perspective: 0.01,
          diameterRatio: 1.0,
          itemExtent: 50,
          children: [
            Container(
              child: const Text("1",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              child: const Text("2",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              child: const Text("3",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              child: const Text("4",
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    ],
  );
}
