import 'package:flutter/material.dart';
import 'package:to_do_list/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.textLines, required this.hint});
  final int textLines;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kprimaryColor,
      maxLines: textLines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: kprimaryColor,
        ),
        focusColor: Colors.white,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(
          kprimaryColor,
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
      borderRadius: BorderRadius.circular(
        8,
      ),
    );
  }
}
