import 'package:flutter/material.dart';
import 'package:to_do_list/Views/Widgets/custom_add_note_button.dart';
import 'package:to_do_list/Views/Widgets/custom_text_field.dart';
import 'package:to_do_list/constant.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
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
              toDoText: "Add Note",
            ),
          ],
        ),
      ),
    );
  }
}
