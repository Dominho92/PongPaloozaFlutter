import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:paloozatestapp/models/mainpage.dart';
import 'package:paloozatestapp/models/new_register_screen.dart';
import 'package:paloozatestapp/models/widgets.dart';

class ShowSignIn extends StatelessWidget {
  const ShowSignIn({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SignInPage(
      key: super.key,
    ));
  }
}

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _auth = FirebaseAuth.instance;
  final FirebaseAnalytics _analytics = FirebaseAnalytics.instance;
  String email = '';
  String password = '';

  void signIn() async {
    if (email.isEmpty || password.isEmpty) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Error'),
            content: const Text('Please enter your email and password'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Close'),
              ),
            ],
          );
        },
      );
    } else if (password.length < 6) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Error'),
            content: const Text('Password must be at least 6 characters'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Close'),
              ),
            ],
          );
        },
      );
    } else {
      try {
        final userCredential = await _auth.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        if (userCredential.user != null) {
          await _analytics.logLogin(loginMethod: 'email');
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const MainPageScreen()),
          );
        }
      } catch (e) {
        print(e);
      }
    }
    try {
      final userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (userCredential.user != null) {
        await _analytics.logLogin(loginMethod: 'email');
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const MainPageScreen()),
        );
      }
    } catch (e) {
      print(e);
    }
  }

  void signInAnonymously() async {
    try {
      final userCredential = await _auth.signInAnonymously();
      if (userCredential.user != null) {
        await _analytics.logEvent(name: 'login_anonymous');
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const MainPageScreen()),
        );
      }
    } catch (e) {
      print(e);
    }
  }

  void navigateToSignUp() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ShowRegisterScreen()),
    );
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
                )),
                child: Center(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    const SizedBox(height: 130),
                    logoWidgetHorizontal(),
                    TextField(
                      style: const TextStyle(
                          color: Color.fromARGB(255, 239, 239, 239)),
                      showCursor: true,
                      cursorColor: const Color.fromARGB(255, 0, 179, 255),
                      onChanged: (value) => email = value,
                      decoration: const InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 239, 239, 239),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      style: const TextStyle(
                          color: Color.fromARGB(255, 239, 239, 239)),
                      showCursor: true,
                      cursorColor: const Color.fromARGB(255, 0, 179, 255),
                      onChanged: (value) => password = value,
                      obscureText: true,
                      decoration: const InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: Color.fromARGB(255, 239, 239, 239),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 10, 210, 0),
                      child: const Text(
                        "Forgot your Password?",
                        style: TextStyle(
                            color: Color.fromARGB(255, 0, 136, 255),
                            decoration: TextDecoration.underline),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            if (email.isEmpty && password.isEmpty) {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: const Text('Error'),
                                    content: const Text(
                                        'Please enter your email and password'),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: const Text('Close'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            } else {
                              signIn();
                            }
                          },
                          child: const Text('Login'),
                        ),
                        ElevatedButton(
                          onPressed: navigateToSignUp,
                          child: const Text('Sign Up'),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(10, 10, 210, 0),
                      child: const Text(
                        "Sign in With:",
                        style: TextStyle(
                            color: Color.fromARGB(255, 239, 239, 239)),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            icon: const Icon(FontAwesomeIcons.apple,
                                color: Color.fromARGB(255, 239, 239, 239),
                                size: 40),
                            onPressed: () {}),
                        IconButton(
                            icon: const Icon(FontAwesomeIcons.google,
                                color: Color.fromARGB(255, 239, 239, 239),
                                size: 30),
                            onPressed: () {}),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    OutlinedButton(
                      onPressed: signInAnonymously,
                      child: const Text('Sign In without Account',
                          style: TextStyle(
                              color: Color.fromARGB(255, 239, 239, 239))),
                    ),
                  ]),
                )))));
  }
}
