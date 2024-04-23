import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SquareOption extends StatelessWidget {
  final String name;
  final IconData icon;

  const SquareOption({super.key, required this.name, required this.icon});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 20,
        width: 90,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(5.0)
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              Text(
                name,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}