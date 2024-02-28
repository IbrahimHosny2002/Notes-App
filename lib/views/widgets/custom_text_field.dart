import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.maxLines = 1});
  final String hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        hintMaxLines: maxLines,
        hintText: hintText,
        hintStyle: const TextStyle(color: kTextColor),
        focusedBorder: textFieldBorder(color: kPrimaryColor),
        enabledBorder: textFieldBorder(),
      ),
    );
  }

  OutlineInputBorder textFieldBorder({color}) {
    return OutlineInputBorder(
        borderSide: BorderSide(color: color ?? Colors.white),
        borderRadius: BorderRadius.circular(8));
  }
}
