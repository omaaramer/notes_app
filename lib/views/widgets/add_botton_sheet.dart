import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../cubits/add_note_cubit/notes_cubit.dart';
import 'add_note_form.dart';

class AddModelBottomSheet extends StatelessWidget {
  const AddModelBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocConsumer<NotesCubit, NotesState>(
          listener: (context, state) {
            if (state is NotesFaliure) {
              //==============================================================
              print("failure=========>");
            }
            if (state is NotesSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is NotesLoading ? true : false,
              child: const SingleChildScrollView(
                child: AddNotForm(),
              ),
            );
          },
        ),
      ),
    );
  }
}
