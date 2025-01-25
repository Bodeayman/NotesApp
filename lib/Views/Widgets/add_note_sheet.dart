import 'package:flutter/material.dart';
import 'package:to_do_list/Views/Widgets/custom_text_field.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16,
        ),
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
          ],
        ),
      ),
    );
  }
}
