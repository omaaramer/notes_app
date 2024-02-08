import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/reade_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import '../components/custom_note_item.dart';

class NotListView extends StatelessWidget {
  const NotListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<ReadeNotesCubitCubit, ReadeNotesCubitState>(
        builder: (context, state) {
          List<NoteModel> notes =
              BlocProvider.of<ReadeNotesCubitCubit>(context).notes ?? [];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ListView.builder(
                itemCount: notes.length,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: NoteItem(
                        note: notes[index],
                      ));
                }),
          );
        },
      ),
    );
  }
}
