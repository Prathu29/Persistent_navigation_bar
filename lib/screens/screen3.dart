import 'package:flutter/material.dart';


class Screen3 extends StatelessWidget {
  final Function updateBadgeCount2;
  const Screen3({super.key,required this.updateBadgeCount2});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            updateBadgeCount2(1); // Increment the badge count by 1
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
            updateBadgeCount2(-1); // Decrement the badge count by 1
          },
          child: const Text(
            'Decrement',
          ),
        ),
      ],
    );
  }
}