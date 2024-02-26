import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _customAppBarState();
}

class _customAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}
