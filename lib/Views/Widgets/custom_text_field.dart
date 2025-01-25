import 'package:flutter/material.dart';
import 'package:to_do_list/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Kprimarycolor,
      decoration: InputDecoration(
        hintText: "Title",
        hintStyle: TextStyle(
          color: Kprimarycolor,
        ),
        focusColor: Colors.white,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(
          Kprimarycolor,
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
