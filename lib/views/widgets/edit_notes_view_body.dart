import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 35,
          ),
          CustomAppBar(
            title: 'Edit Notes',
            icon: Icons.done,
          ),
          SizedBox(
            height: 35,
          ),
          CustomTextField(hintText: 'title'),
          SizedBox(
            height: 15,
          ),
          CustomTextField(hintText: 'content',maxLines: 5,)
        ],
      ),
    );
  }
}
