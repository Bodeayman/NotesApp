import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_list/Cubits/Add_Note_Cubit/add_note_cubit.dart';
import 'package:to_do_list/Cubits/Notes_Cubit/notes_cubit_cubit.dart';
import 'package:to_do_list/Views/Widgets/add_note_form.dart';

class AddNoteSheet extends StatefulWidget {
  const AddNoteSheet({super.key});

  @override
  State<AddNoteSheet> createState() => _AddNoteSheetState();
}

class _AddNoteSheetState extends State<AddNoteSheet> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {
              debugPrint("Failed");
            } else if (state is AddNoteSuccess) {
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.of(context).pop();
            }
          },
          builder: (context, state) {
            // If you seen here that i put a listner to just listen to the changes but doesn't rebuild
            // but the rebuilding happens in the button as BlocBuilder so you don't need to rebuild the whole ui
            return AbsorbPointer(
              absorbing: state is AddNoteLoading ? true : false,
              child: const Padding(
                padding: EdgeInsets.only(
                  left: 16,
                  right: 16,
                ),
                child: SingleChildScrollView(
                  child: AddNoteForm(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
