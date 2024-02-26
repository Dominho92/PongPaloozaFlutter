import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LastMatches extends StatefulWidget {
  const LastMatches({super.key});

  @override
  State<LastMatches> createState() => _LastMatchesState();
}

class _LastMatchesState extends State<LastMatches> {
  List<String> lastMatches = [];

  lastMatchesContainer(String lastMatch, String lastMatchResults, bool isWin) {
    return InkWell(
      onTap: () {
        showCupertinoDialog(
            context: context,
            builder: (BuildContext context) {
              return CupertinoAlertDialog(
                // ignore: unnecessary_string_interpolations
                title: Text("$lastMatch"),
                content: Text("You played $lastMatchResults // Win? $isWin"),
                actions: <Widget>[
                  CupertinoDialogAction(
                    isDefaultAction: true,
                    child: const Text("Close"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            });
      },
      child: Container(
        height: 60,
        width: 100,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 154, 154, 154),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            const Icon(Icons.sports_soccer),
            const SizedBox(
              width: 10,
            ),
            Text(lastMatch,
                style: const TextStyle(color: Color.fromARGB(255, 47, 47, 47))),
            const SizedBox(width: 220),
            const Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.chevron_left),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          toolbarHeight: 40,
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 119, 119, 119),
          title: const Text(
            "Last Matches",
            style: TextStyle(color: Color.fromARGB(255, 5, 5, 5)),
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bgONE.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(8),
            children: [
              const SizedBox(
                height: 20,
              ),
              lastMatchesContainer("Last Match 1", "2-1", true),
              const Divider(thickness: 1),
              lastMatchesContainer("Last Match 2", "3-0", false),
              const Divider(thickness: 1),
              lastMatchesContainer("Last Match 3", "1-2", false),
              const Divider(thickness: 1),
              lastMatchesContainer("Last Match 4", "4-2", true),
              const Divider(thickness: 1),
              lastMatchesContainer("Last Match 5", "2-1", false),
              const Divider(thickness: 1),
              lastMatchesContainer("Last Match 6", "2-1", true),
            ],
          ),
        ),
      ),
    );
  }
}
