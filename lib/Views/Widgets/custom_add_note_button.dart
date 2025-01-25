import 'package:flutter/material.dart';
import 'package:to_do_list/constant.dart';

class CustomAddNoteButton extends StatelessWidget {
  const CustomAddNoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kprimaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      height: 55,
      width: MediaQuery.of(context).size.width,
      child: const Center(
        child: Text(
          "Add Note",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
