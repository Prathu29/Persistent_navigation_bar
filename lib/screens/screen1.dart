import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  final Function updateBadgeCount;

  const Screen1({super.key, required this.updateBadgeCount});

  @override
  Widget build(BuildContext context) {
    // Rest of the code
      return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            updateBadgeCount(1); // Increment the badge count by 1
          },
          child: const Text(
            'Increment',
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        ElevatedButton(
          onPressed: () {
            updateBadgeCount(-1); // Decrement the badge count by 1
          },
          child: const Text(
            'Decrement',
          ),
        ),
      ],
    );
  }
}

