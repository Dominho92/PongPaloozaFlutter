import 'package:flutter/material.dart';

class CustomBototomSheet extends StatefulWidget {
  const CustomBototomSheet({super.key});

  @override
  State<CustomBototomSheet> createState() => _CustomBototomSheetState();
}

class _CustomBototomSheetState extends State<CustomBototomSheet> {
  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      onClosing: () {},
      builder: (BuildContext context) {
        return Container(
          height: 200,
          color: Color.fromARGB(128, 255, 255, 255),
          child: const Center(
            child: Text('BottomSheet'),
          ),
        );
      },
    );
  }
}
