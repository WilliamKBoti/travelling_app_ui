import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  final String child;

  const MyList({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 200,
        color: Colors.deepPurple[200],
        child: Text(
          child,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}