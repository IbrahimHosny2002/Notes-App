import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cuibts/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
import 'package:notes_app/views/widgets/edit_note_color_ist.dart';

class EditNotesViewBody extends StatefulWidget {
  const EditNotesViewBody({required this.note, super.key});
  final NoteModel note;

  @override
  State<EditNotesViewBody> createState() => _EditNotesViewBodyState();
}

class _EditNotesViewBodyState extends State<EditNotesViewBody> {
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 35,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = subtitle ?? widget.note.subtitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.of(context).pop();
            },
            title: widget.note.title,
            icon: Icons.done,
          ),
          const SizedBox(
            height: 35,
          ),
          CustomTextField(
              onChanged: (data) {
                title = data;
              },
              hintText: widget.note.title),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
            onChanged: (data) {
              subtitle = data;
            },
            hintText: widget.note.subtitle,
            maxLines: 5,
          ),
          const SizedBox(
            height: 15,
          ),
          EditNoteColorList(
            note: widget.note,
          ),
        ],
      ),
    );
  }
}
