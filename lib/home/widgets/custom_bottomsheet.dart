// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:paloozatestapp/home/screens/login_screen.dart';
import 'package:paloozatestapp/home/screens/register_screen.dart';

class CustomBototomSheet extends StatefulWidget {
  const CustomBototomSheet({super.key});

  @override
  State<CustomBototomSheet> createState() => _CustomBototomSheetState();
}

class _CustomBototomSheetState extends State<CustomBototomSheet> {
  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255).withOpacity(0),
      onClosing: () {},
      builder: (BuildContext context) {
        return Container(
          height: 350,
          color: const Color.fromARGB(0, 255, 255, 255),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: const Text(
                      "Spielt klug, trinkt weise: verantwortungsvoller Alkoholkonsum \n macht das Spiel noch spannender!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 15,
                          fontWeight: FontWeight.bold)),
                ),
                const SizedBox(height: 20),
                const Text("Du hast noch keinen Account?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 16,
                        fontWeight: FontWeight.normal)),
                InkWell(
                  child: const Text(
                    "Dann registriere dich hier!",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 157, 255),
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ShowRegisterScreen())),
                ),
                const SizedBox(height: 20),
                Container(
                  child: const Divider(
                    color: Color.fromARGB(255, 73, 73, 73),
                    thickness: 1,
                    indent: 20,
                    endIndent: 20,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                    "Wenn du einen Account hast,\n oder nicht speichern möchtest:",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 42, 42, 42),
                        fontSize: 16,
                        fontWeight: FontWeight.normal)),
                InkWell(
                  child: const Text(
                    "Dann Log dich hier ein!\n",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 157, 255),
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ShowSignIn())),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
