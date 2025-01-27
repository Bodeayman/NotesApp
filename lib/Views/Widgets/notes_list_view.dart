import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_list/Cubits/Notes_Cubit/notes_cubit_cubit.dart';
import 'package:to_do_list/Models/note_model.dart';
import 'package:to_do_list/Views/Widgets/note_item.dart';

class NotesListView extends StatefulWidget {
  NotesListView({super.key});

  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesCubitState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];

        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
          ),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return NoteItem(note: notes[index]);
            },
            itemCount: notes.length,
          ),
        );
      },
    );
  }
}
