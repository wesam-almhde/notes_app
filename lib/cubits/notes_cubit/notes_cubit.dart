import 'package:bloc/bloc.dart';
import 'package:flutter_application_10/constants.dart';
import 'package:flutter_application_10/models/note_model.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes() async {
    try {
      var notesBox = Hive.box<NoteModel>(kNoteBox);

      List<NoteModel> notes = notesBox.values.toList();
      emit(NotesSeccess(notes: notes));
    } catch (e) {
      emit(NotesFailure(errMessage: e.toString()));
    }
  }
}
