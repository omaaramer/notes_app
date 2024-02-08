import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../cubits/add_note_cubit/notes_cubit.dart';
import 'add_note_form.dart';

class AddModelBottomSheet extends StatelessWidget {
  const AddModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: BlocConsumer<NotesCubit, NotesState>(
          listener: (context, state) {
            if (state is NotesFaliure) {
              //==============================================================
              print("failure=========>${StateError}");
            }
            if (state is NotesSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return state is NotesLoading
                ? const CircularProgressIndicator()
                : const AddNotForm();
          },
        ),
      ),
    );
  }
}
