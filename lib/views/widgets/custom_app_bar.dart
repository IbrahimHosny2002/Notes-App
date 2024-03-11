import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({this.onPressed,super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 30, color: Colors.white),
        ),
        const Spacer(),
        CustomSearchIcon(
          onPressed: onPressed,
          icon: icon,
        ),
      ],
    );
  }
}
