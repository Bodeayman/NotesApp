import 'package:flutter/material.dart';
import 'package:to_do_list/Views/Widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  NotesListView({super.key});
  List<String> notes = ["Notes one", "Notes two", "Notes three", "Notes three"];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
      ),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return NoteItem(
            title: notes[index],
            subTitle: notes[index],
            date: notes[index],
          );
        },
        itemCount: notes.length,
      ),
    );
  }
}
