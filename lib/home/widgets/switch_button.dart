import 'package:flutter/material.dart';

class SwitchCustom extends StatefulWidget {
  const SwitchCustom({super.key});

  @override
  State<SwitchCustom> createState() => _SwitchCustomState();
}

class _SwitchCustomState extends State<SwitchCustom> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: _isSwitched,
        activeColor: Color.fromARGB(255, 40, 140, 255),
        onChanged: (bool value) {
          setState(() {
            _isSwitched = value;
          });
        });
  }
}
