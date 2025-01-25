import 'package:flutter/material.dart';
import 'package:to_do_list/constant.dart';

class CustomAddNoteButton extends StatelessWidget {
  const CustomAddNoteButton({super.key, required this.toDoText});
  final String toDoText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kprimaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      height: 55,
      width: MediaQuery.of(context).size.width,
      child: Center(
        child: Text(
          toDoText,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
