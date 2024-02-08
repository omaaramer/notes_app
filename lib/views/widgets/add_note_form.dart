import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import '../components/custom_button.dart';
import '../components/custom_text_field.dart';

class AddNotForm extends StatefulWidget {
  const AddNotForm({super.key});

  @override
  State<AddNotForm> createState() => _AddNotFormState();
}

class _AddNotFormState extends State<AddNotForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: Column(
        children: [
          const SizedBox(height: 32),
          CustomTextFormField(
            onSaved: (value) {
              title = value!;
            },
            hint: 'Title',
          ),
          const SizedBox(height: 16),
          CustomTextFormField(
            onSaved: (value) {
              subTitle = value!;
            },
            hint: 'Content',
            maxLine: 5,
          ),
          const SizedBox(height: 32),
          BlocBuilder<NotesCubit, NotesState>(
            builder: (context, state) {
              return CustomButtun(
                  isLoading: state is NotesLoading ? true : false,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      var noteModel = NoteModel(
                          title: title!,
                          subTitle: subTitle!,
                          date: DateTime.now().toString(),
                          color: Colors.blue.value);
                      BlocProvider.of<NotesCubit>(context).addNote(noteModel);
                    } else {
                      //explain the following line?
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                  text: "Add");
            },
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
