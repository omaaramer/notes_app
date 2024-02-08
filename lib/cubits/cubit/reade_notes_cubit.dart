import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';

import '../../constants.dart';
import '../../models/note_model.dart';

part 'reade_notes_state.dart';

class ReadeNotesCubitCubit extends Cubit<ReadeNotesCubitState> {
  ReadeNotesCubitCubit() : super(ReadeNotesCubitInitial());
  List<NoteModel>? notes;
  fitchAllNotes() async {
    var notesBox = Hive.box<NoteModel>(kNoteBox);
    notes = notesBox.values.toList();
  }
}
