import 'package:flutter/material.dart';
import 'package:paloozatestapp/screens/login_screen.dart';
import 'package:paloozatestapp/screens/new_register_screen.dart';
import 'package:paloozatestapp/widgets/widgets.dart';

class SecondLoadingScreen extends StatelessWidget {
  const SecondLoadingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: SecondLoading());
  }
}

class SecondLoading extends StatefulWidget {
  const SecondLoading({Key? key}) : super(key: key);

  @override
  SecondLoadingState createState() => SecondLoadingState();
}

class SecondLoadingState extends State<SecondLoading>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..forward();
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: const Offset(0, 1.5),
    end: const Offset(0, 0),
  ).animate(
    CurvedAnimation(parent: _controller, curve: Curves.easeIn),
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 45, 45, 45),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bgONE.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 90),
                logoWidgetHorizontal(),
                Divider(
                  color: Colors.transparent,
                  height: MediaQuery.of(context).size.height * 0.2,
                ),
                SlideTransition(
                  position: _offsetAnimation,
                  textDirection: TextDirection.ltr,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage("assets/images/rec129.png"),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          height: 410,
                          width: 327,
                          child: Column(
                            children: [
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 20, 10, 10),
                                child: const Text(
                                    "Spielt klug, trinkt weise: verantwortungsvoller Alkoholkonsum macht das Spiel noch spannender!",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 239, 239, 239),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ),
                              const SizedBox(height: 20),
                              const Text("Du hast noch keinen Account?",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 239, 239, 239),
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal)),
                              InkWell(
                                child: const Text(
                                  "Dann registriere dich hier!",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 18,
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
                                  color: Color.fromARGB(255, 239, 239, 239),
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
                                      color: Color.fromARGB(255, 239, 239, 239),
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal)),
                              InkWell(
                                child: const Text(
                                  "Dann Log dich hier ein!\n",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 18,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ShowSignIn())),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
