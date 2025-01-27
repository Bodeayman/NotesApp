import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:to_do_list/Models/note_model.dart';
import 'package:to_do_list/constant.dart';

part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;
  fetchAllNotes() async {
    var notesBox = Hive.box<NoteModel>(kboxName);
    notes = notesBox.values.toList();
    emit(
      NotesSuccess(),
    );
  }
}
