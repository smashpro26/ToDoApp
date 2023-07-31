import 'package:flutter/material.dart';
import 'package:to_do_app/util/my_button.dart';

class CreateTaskDialogue extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  CreateTaskDialogue({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task...",
              ),
            ),
            Row(
              children: [
                MyButton(text: "Save", onPressed: onSave),
                MyButton(text: "Cancel", onPressed: onCancel),
              ],
            )
          ],
        ),
      ),
    );
  }
}
