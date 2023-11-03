import 'package:flutter/material.dart';
import 'package:sakuku_app/helpers/themes.dart';

class TextFieldAddTarget extends StatelessWidget {
  const TextFieldAddTarget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10),
        filled: true,
        fillColor: softGreyColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
