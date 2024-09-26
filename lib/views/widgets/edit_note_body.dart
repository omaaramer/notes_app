import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/cubit/reade_notes_cubit.dart';
import 'package:notes_app/views/screens/notes_view.dart';
import '../../models/note_model.dart';
import '../components/custom_app_bar.dart';
import '../components/custom_text_field.dart';
import 'edit_note_colors_list.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              const SizedBox(height: 30),
              CustomAppBar(
                onPressed: () {
                  widget.note.title = title ?? widget.note.title;
                  widget.note.subTitle = subtitle ?? widget.note.subTitle;
                  widget.note.save();
                  BlocProvider.of<ReadeNotesCubitCubit>(context)
                      .fitchAllNotes();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NotesView()));
                },
                text: 'Edit Note',
                icon: const Icon(
                  Icons.check,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 32),
              CustomTextFormField(
                initialValue: widget.note.title, // Pre-fills the title
                onChanged: (value) {
                  title = value;
                },
                hint: 'Enter Title', // Placeholder text when the field is empty
              ),
              const SizedBox(height: 16),
              CustomTextFormField(
                initialValue: widget.note.subTitle, // Pre-fills the subtitle
                onChanged: (value) {
                  subtitle = value;
                },
                hint:
                    'Enter Subtitle', // Placeholder text when the field is empty
                maxLine: 5,
              ),
              const SizedBox(height: 32),
              EditNotesColorsList(
                note: widget.note,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
