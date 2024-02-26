import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:paloozatestapp/home/screens/login_screen.dart';
import 'package:paloozatestapp/home/screens/register_screen.dart';
import 'package:paloozatestapp/home/widgets/widgets.dart';

class ShowCustomBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CustomBottomSheet(),
    );
  }
}

class CustomBottomSheet extends StatelessWidget {
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.transparent,
      builder: (context) {
        return Container(
          margin: EdgeInsets.all(8),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 20.0,
                sigmaY: 20.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  border: Border.all(
                    color: Colors.black26,
                    width: 0.5,
                  ),
                ),
                child: Column(
                  children: [
                    Center(
                      child: FractionallySizedBox(
                        widthFactor: 0.25,
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                            vertical: 8,
                          ),
                          height: 4,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(2),
                            border: Border.all(
                              color: Colors.black12,
                              width: 0.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(height: 50),
                          Container(
                            child: const Text(
                                "Spielt klug, trinkt weise: verantwortungsvoller Alkoholkonsum \n macht das Spiel noch spannender!",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(height: 40),
                          const Text("Du hast noch keinen Account?",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
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
                                    builder: (context) =>
                                        const ShowRegisterScreen())),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            child: const Divider(
                              color: Color.fromARGB(255, 110, 110, 110),
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
                                  color: Color.fromARGB(255, 255, 255, 255),
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
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            children: [
              logoWidgetHorizontal(),
              SizedBox(height: 100),
              OutlinedButton(
                onPressed: () => _showBottomSheet(context),
                child: Text('Enter the PongPalooza World!',
                    style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
