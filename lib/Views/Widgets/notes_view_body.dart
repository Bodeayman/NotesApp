import 'package:flutter/material.dart';
import 'package:to_do_list/Views/Widgets/custom_app_bar.dart';
import 'package:to_do_list/Views/Widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Column(
        children: [
          const CustomAppBar(
            title: "Notes",
            icon_data: Icons.search,
          ),
          Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
