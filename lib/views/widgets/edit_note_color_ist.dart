import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/color_list_view.dart';

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({required this.note, super.key});
  final NoteModel note;

  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
  late int currenIndex;
  @override
  void initState() {
    super.initState();
    currenIndex = kColors.indexOf(Color(widget.note.color));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          itemCount: kColors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: GestureDetector(
                  onTap: () {
                    currenIndex = index;
                    widget.note.color = kColors[index].value;
                    setState(() {});
                  },
                  child: ColorIteam(
                      color: kColors[index], isActive: currenIndex == index)),
            );
          }),
    );
  }
}
