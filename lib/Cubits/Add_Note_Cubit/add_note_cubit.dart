import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:to_do_list/Models/note_model.dart';
import 'package:to_do_list/constant.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    emit(AddNoteLoading());

    try {
      var notesBox = Hive.box<NoteModel>(kboxName);
      await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(
        AddNoteFailure(e.toString()),
      );
    }
  }
}
