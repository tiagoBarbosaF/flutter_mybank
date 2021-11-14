import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final TextEditingController? name;
  final TextEditingController controller;
  final String label;
  final String tip;
  final IconData? icon;

  // ignore: use_key_in_widget_constructors
  const Editor(
      {this.name,
      required this.controller,
      required this.label,
      required this.tip,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controller,
        style: const TextStyle(
          fontSize: 20.0,
        ),
        decoration: InputDecoration(
          icon: icon != null ? Icon(icon) : null,
          labelText: label,
          hintText: tip,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
