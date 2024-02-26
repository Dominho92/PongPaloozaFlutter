import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:paloozatestapp/home/screens/create_match_screen.dart';
import 'package:paloozatestapp/home/screens/last_matches_screen.dart';
import 'package:paloozatestapp/home/widgets/widgets.dart';

class MainPageScreen extends StatelessWidget {
  const MainPageScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MainPage());
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: customAppBar("Home"),
        bottomNavigationBar: customBottomBar(),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bgONE.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                logoWidget(),
                const SizedBox(height: 50),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CreateNewMatch()));
                  },
                  child: SizedBox(
                    width: 344,
                    height: 56,
                    child: Image.asset(
                      'assets/images/mainbutton.png',
                      height: 56,
                      width: 344,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LastMatches()));
                  },
                  child: SizedBox(
                    width: 344,
                    height: 56,
                    child: Image.asset(
                      'assets/images/mainbutton2.png',
                      height: 56,
                      width: 344,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LastMatches()));
                  },
                  child: SizedBox(
                    width: 344,
                    height: 56,
                    child: Image.asset(
                      'assets/images/mainbutton3.png',
                      height: 56,
                      width: 344,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainPageScreen()));
                  },
                  child: SizedBox(
                    width: 344,
                    height: 56,
                    child: Image.asset(
                      'assets/images/mainbutton4.png',
                      height: 56,
                      width: 344,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainPageScreen()));
                  },
                  child: SizedBox(
                    width: 344,
                    height: 56,
                    child: Image.asset(
                      'assets/images/mainbutton5.png',
                      height: 56,
                      width: 344,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ).animate().fadeIn(delay: Duration(milliseconds: 500)),
        ),
      ),
    );
  }
}
