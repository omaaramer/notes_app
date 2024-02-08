import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  bool isloading = false;
  addNote(NoteModel note) async {
    emit(NotesLoading());

    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);

      emit(NotesSuccess());
      await noteBox.add(note);
    } catch (e) {
      NotesError(errorMessage: e.toString());
    }
  }
}
