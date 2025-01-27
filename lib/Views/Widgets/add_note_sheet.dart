import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:to_do_list/Cubits/Add_Note_Cubit/add_note_cubit.dart';
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
              Navigator.of(context).pop();
            }
          },
          builder: (context, state) {
            return const SingleChildScrollView(
              child: AddNoteForm(),
            );
          },
        ),
      ),
    );
  }
}
