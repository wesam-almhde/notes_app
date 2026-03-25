part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class AddNoteLoading extends NotesState {}

final class AddNoteSeccess extends NotesState {
  final List<NoteModel> notes;

  AddNoteSeccess({required this.notes});
}

final class AddNoteFailure extends NotesState {
  final String errMessage;

  AddNoteFailure({required this.errMessage});
}
