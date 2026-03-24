import 'package:bloc/bloc.dart';
import 'package:flutter_application_10/constants.dart';
import 'package:flutter_application_10/models/note_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNoteBox);

      emit(AddNoteSeccess());
      await notesBox.add(note);
    } catch (e) {
      AddNoteFailure(errMessage: e.toString());
    }
  }
}
