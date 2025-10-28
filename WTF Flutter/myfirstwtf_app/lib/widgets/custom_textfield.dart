import 'package:flutter/material.dart';

class CustomTexfield extends StatelessWidget {
  const CustomTexfield({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        labelText: label,
      ),
    );
  }
}

