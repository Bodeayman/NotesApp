import 'package:flutter/material.dart';
import 'package:to_do_list/Views/Widgets/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Column(
        children: [
          CustomAppBar(),
        ],
      ),
    );
  }
}
