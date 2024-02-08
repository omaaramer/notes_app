part of 'reade_notes_cubit_cubit.dart';

@immutable
sealed class ReadeNotesCubitState {}

final class ReadeNotesCubitInitial extends ReadeNotesCubitState {}

final class ReadeNotesFaliure extends ReadeNotesCubitState {
  final String errorMessage;

  ReadeNotesFaliure(this.errorMessage);
}

final class ReadeNoteSuccess extends ReadeNotesCubitState {
  final List<NoteModel> notes;

  ReadeNoteSuccess(this.notes);
}

final class ReadeNotesError extends ReadeNotesCubitState {}
