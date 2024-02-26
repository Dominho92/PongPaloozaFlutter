import 'package:flutter/material.dart';
import 'package:paloozatestapp/home/screens/login_screen.dart';
import 'package:paloozatestapp/services/auth_services.dart';

class ShowRegisterScreen extends StatelessWidget {
  const ShowRegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: NewRegisterScreen());
  }
}

class NewRegisterScreen extends StatefulWidget {
  const NewRegisterScreen({super.key});

  @override
  State<NewRegisterScreen> createState() => _NewRegisterScreenState();
}

class _NewRegisterScreenState extends State<NewRegisterScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  bool showLoading = false;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/bgONE.png"),
              fit: BoxFit.cover,
            )),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 130),
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
                  const SizedBox(
                    height: 20,
                  ),
                  emailField(),
                  const SizedBox(
                    height: 15,
                  ),
                  passwordField(),
                  const SizedBox(
                    height: 20,
                  ),
                  registerUser()
                ],
              ),
            )));
  }

  Widget emailField() {
    return TextField(
      showCursor: true,
      cursorColor: const Color.fromARGB(255, 0, 179, 255),
      controller: emailController,
      style: const TextStyle(color: Colors.white),
      decoration: const InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        hintText: 'Enter your Email',
        hintStyle: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget passwordField() {
    return TextField(
      showCursor: true,
      cursorColor: const Color.fromARGB(255, 0, 179, 255),
      controller: passwordController,
      style: const TextStyle(color: Colors.white),
      decoration: const InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        hintText: 'Enter your Password',
        hintStyle: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget UsernameField() {
    return TextField(
      showCursor: true,
      cursorColor: const Color.fromARGB(255, 0, 179, 255),
      controller: usernameController,
      style: const TextStyle(color: Colors.white),
      decoration: const InputDecoration(
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        hintText: 'Enter your Username',
        hintStyle: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget registerUser() {
    return MaterialButton(
      onPressed: () async {
        if (emailController.text.isEmpty || passwordController.text.isEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Bitte fülle alle Felder aus')));
        } else if (passwordController.text.length < 6) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content:
                  Text('Das Passwort muss mindestens 6 Zeichen lang sein')));
        } else if (!emailController.text.contains('@')) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Bitte gib eine gültige Email ein')));
        } else {
          setState(() {
            showLoading = true;
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SignInPage()));
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Registration Successful')));
          });
          await AuthServices().registerUserInFirebase(
              emailController.text, passwordController.text, context);
        }
        setState(() {
          showLoading = false;
        });
      },
      color: Colors.blue,
      child: showLoading
          ? const SizedBox(
              height: 13, width: 14, child: CircularProgressIndicator())
          : const Text('Register'),
    );
  }
}
