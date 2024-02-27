import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_note_iteam.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24
      ),
      child: Column(
        children:  [
          SizedBox(
            height: 35,
          ),
          CustomAppBar(),
          CustomNoteIteam(),
        ],
      ),
    );
  }
}



