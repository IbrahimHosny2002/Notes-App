import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
      width: MediaQuery.of(context).size.width,
      height: 40,
      decoration: BoxDecoration(
          color: kPrimaryColor, borderRadius: BorderRadius.circular(8)),
      child: const Center(
        child: Text(
          'Add',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 16),
        ),
      ),
    ));
  }
}
