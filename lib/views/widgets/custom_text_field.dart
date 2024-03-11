import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {this.onChanged,
      super.key,
      required this.hintText,
      this.maxLines = 1,
      this.onSaved});
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (data) {
        if (data?.isEmpty ?? true) {
          return 'this field is required';
        } else {
          return null;
        }
      },
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
