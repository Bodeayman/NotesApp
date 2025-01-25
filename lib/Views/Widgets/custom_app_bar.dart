import 'package:flutter/material.dart';
import 'package:to_do_list/Views/Widgets/search_icon_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon_data});
  final String title;
  final IconData icon_data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 28,
            color: Colors.white,
          ),
        ),
        const Spacer(),
        SearchIconButton(icon_data: icon_data),
      ],
    );
  }
}
