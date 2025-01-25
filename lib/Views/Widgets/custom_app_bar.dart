import 'package:flutter/material.dart';
import 'package:to_do_list/Views/Widgets/search_icon_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "Notes",
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        Spacer(),
        SearchIconButton(),
      ],
    );
  }
}
