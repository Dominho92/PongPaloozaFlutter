import 'package:flutter/material.dart';
import 'package:paloozatestapp/home/widgets/widgets.dart';

class CreateNewMatch extends StatefulWidget {
  const CreateNewMatch({super.key});

  @override
  State<CreateNewMatch> createState() => _CreateNewMatchState();
}

class _CreateNewMatchState extends State<CreateNewMatch> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
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
                "Create new Match",
                style: TextStyle(color: Color.fromARGB(255, 5, 5, 5)),
              ),
            ),
            bottomNavigationBar: customBottomBar(),
            body: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/bgONE.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                    child: Column(children: [
                  const SizedBox(height: 50),
                  createMatchSpinner("How Many Players?"),
                  const SizedBox(height: 10),
                  createMatchSpinner("How Many Teams?"),
                  const SizedBox(height: 30),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 140, 0),
                    child: const Text(
                      "Shuffle Teams?",
                      style: TextStyle(
                          color: Color.fromARGB(255, 239, 239, 239),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CreateNewMatch()));
                    },
                    child: const Text("Next Step",
                        style:
                            TextStyle(color: Color.fromARGB(255, 36, 36, 36))),
                  ),
                ])))));
  }
}
