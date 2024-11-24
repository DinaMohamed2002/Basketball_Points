import 'package:flutter/material.dart';

class Points extends StatelessWidget {
  String title;
  VoidCallback onPressed;
  Points({required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orangeAccent,
          minimumSize: const Size(90, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.black, 
            fontSize: 25,
        ),
      ),
    );
  }
}
