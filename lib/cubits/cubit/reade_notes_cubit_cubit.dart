import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/note_model.dart';

part 'reade_notes_cubit_state.dart';

class ReadeNotesCubitCubit extends Cubit<ReadeNotesCubitState> {
  ReadeNotesCubitCubit() : super(ReadeNotesCubitInitial());
}
