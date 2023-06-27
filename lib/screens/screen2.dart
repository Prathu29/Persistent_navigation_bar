import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  final Function updateBadgeCount1;
  const Screen2({super.key,required this.updateBadgeCount1});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            updateBadgeCount1(1); // Increment the badge count by 1
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
            updateBadgeCount1(-1); // Decrement the badge count by 1
          },
          child: const Text(
            'Decrement',
          ),
        ),
      ],
    );
  }
}