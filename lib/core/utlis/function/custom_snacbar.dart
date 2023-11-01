import 'package:flutter/material.dart';

void customSnacBar(context, String text) {
    ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
    ),
  );
}