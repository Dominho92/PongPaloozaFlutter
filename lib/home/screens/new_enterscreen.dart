import 'package:flutter/material.dart';
import 'package:paloozatestapp/home/widgets/custom_bottomsheet.dart';
import 'package:paloozatestapp/home/widgets/widgets.dart';

class SencondEnterScreen extends StatefulWidget {
  const SencondEnterScreen({super.key});

  @override
  State<SencondEnterScreen> createState() => _SencondEnterScreenState();
}

class _SencondEnterScreenState extends State<SencondEnterScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomSheet: const CustomBototomSheet(),
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
                const SizedBox(height: 140),
                logoWidgetHorizontal(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
