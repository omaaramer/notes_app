import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  Color color = const Color(0xff197278);
  addNote(NoteModel note) async {
    note.color = color.value;
    emit(NotesLoading());

    try {
      var notesBox = Hive.box<NoteModel>(kNoteBox);
      await notesBox.add(note);
      emit(NotesSuccess());
    } catch (e) {
      emit(NotesFaliure(e.toString()));
      print(e);
    }
  }
}
