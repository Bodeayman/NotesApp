import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:to_do_list/Cubits/Notes_Cubit/notes_cubit_cubit.dart';
import 'package:to_do_list/Models/note_model.dart';
import 'package:to_do_list/Views/edit_notes_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});

  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const EditNotesView(),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              top: 24,
              bottom: 24,
              left: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  title: Text(
                    note.title,
                    style: const TextStyle(
                      fontSize: 26,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(
                      top: 16,
                      bottom: 16,
                    ),
                    child: Text(
                      note.subTitle,
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 18,
                      ),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      note.delete();
                      BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                    },
                    icon: const Icon(
                      FontAwesomeIcons.trash,
                      // Icons.delete,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.4,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      right: 24,
                    ),
                    child: Text(
                      note.date,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
