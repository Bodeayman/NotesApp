import 'package:flutter/material.dart';
import 'package:to_do_list/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.textLines, required this.hint, this.onSaved});
  final int textLines;
  final String hint;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is Required';
        } else {
          return null;
        }
      },
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
