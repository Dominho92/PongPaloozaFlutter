import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:paloozatestapp/home/models/style.dart';

class SetTeams extends StatefulWidget {
  const SetTeams({super.key});

  @override
  State<SetTeams> createState() => _SetTeamsState();
}

class _SetTeamsState extends State<SetTeams> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[850],
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          toolbarHeight: 40,
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 119, 119, 119),
          title: const Text(
            "Set your Teams",
            style: TextStyle(color: Color.fromARGB(255, 5, 5, 5)),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/bgONE.png"),
            fit: BoxFit.cover,
          )),
          child: Center(
            child: ListView(
              padding: const EdgeInsets.all(16),
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 160, 0),
                    child: Text("Set Team #1", style: heroLine)),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    showCursor: true,
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      labelText: 'Name #1',
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    showCursor: true,
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      labelText: 'Name #2',
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 160, 0),
                    child: Text("Set Team #2", style: heroLine)),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    showCursor: true,
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      labelText: 'Name #3',
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    showCursor: true,
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      labelText: 'Name #4',
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                    onPressed: () {}, child: Text("Start the Game!")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
