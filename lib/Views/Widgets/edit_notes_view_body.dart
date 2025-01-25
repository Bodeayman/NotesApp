import 'package:flutter/material.dart';
import 'package:to_do_list/Views/Widgets/custom_add_note_button.dart';
import 'package:to_do_list/Views/Widgets/custom_app_bar.dart';
import 'package:to_do_list/Views/Widgets/custom_text_field.dart';

class EditNotesViewBody extends StatelessWidget {
  const EditNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 16,
      ),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(
            title: "Edit Note",
            icon_data: Icons.edit,
          ),
          SizedBox(height: 30),
          CustomTextField(
            textLines: 1,
            hint: "Title",
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            textLines: 5,
            hint: "Content",
          ),
          SizedBox(height: 36),
          CustomAddNoteButton(
            toDoText: "Edit Note",
          ),
        ],
      ),
    );
  }
}
