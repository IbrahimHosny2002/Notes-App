import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cuibts/add_note_cuibt/add_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/color_list_view.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNotesForm extends StatefulWidget {
  const AddNotesForm({
    super.key,
  });

  @override
  State<AddNotesForm> createState() => _AddNotesFormState();
}

class _AddNotesFormState extends State<AddNotesForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (data) {
              title = data;
            },
            hintText: 'Title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (data) {
              subtitle = data;
            },
            hintText: 'Content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 30,
          ),
          const ColorListView(),
          const SizedBox(
            height: 30,
          ),
          BlocBuilder<AddNotesCubit, AddNotesState>(
            builder: (context, state) {
              return CustomButton(
                hinText: 'Add',
                isLoading: state is AddNotesLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var currentDateTime = DateTime.now();
                    var formatedDateTime =
                        DateFormat('dd-mm-yyyy').format(currentDateTime);
                    NoteModel note = NoteModel(
                        date: formatedDateTime,
                        subtitle: subtitle!,
                        color: Colors.black.value,
                        title: title!);
                    BlocProvider.of<AddNotesCubit>(context).addNote(note);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}
