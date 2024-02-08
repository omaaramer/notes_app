part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesLoading extends NotesState {}

final class NotesFaliure extends NotesState {
  final String errorMessage;

  NotesFaliure(this.errorMessage);
}

final class NotesError extends NotesState {}

final class NotesSuccess extends NotesState {}
