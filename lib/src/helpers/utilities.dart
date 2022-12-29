
import 'package:flutter/material.dart';

void utilitySnackBar(BuildContext context, String message) {
  final snackBar = SnackBar(
    duration: const Duration(microseconds: 300),
    backgroundColor: const Color(0xff131313),
    content: Text(
      message,
      style: const TextStyle(color: Colors.white, fontSize: 15),
    ),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
