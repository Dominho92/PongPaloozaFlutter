import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:paloozatestapp/home/mainpage.dart';
import 'package:paloozatestapp/home/screens/loading_screen.dart';
import 'services/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(LoadupScreen());
}
