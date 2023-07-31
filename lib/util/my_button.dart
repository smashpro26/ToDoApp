import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, top: 12),
      child: MaterialButton(
        onPressed: onPressed,
        color: Theme.of(context).primaryColor,
        child: Text(text),
      ),
    );
  }
}
