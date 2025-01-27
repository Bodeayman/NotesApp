import 'package:flutter/material.dart';
import 'package:to_do_list/constant.dart';

class CustomAddNoteButton extends StatelessWidget {
  const CustomAddNoteButton(
      {super.key,
      required this.toDoText,
      this.ontapped,
      this.isLoading = false});
  final String toDoText;
  final void Function()? ontapped;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontapped,
      child: Container(
        decoration: BoxDecoration(
          color: kprimaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        height: 55,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: isLoading
              ? const SizedBox(
                  height: 25,
                  width: 25,
                  child: CircularProgressIndicator(
                    color: Colors.black,
                  ),
                )
              : Text(
                  toDoText,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
        ),
      ),
    );
  }
}
