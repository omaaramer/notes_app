import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'custom_text_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 30),
          CustomAppBar(
            text: 'Edit Note',
            icon: Icon(
              Icons.check,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 32),
          CustomTextFormField(
            hint: 'Title',
          ),
          SizedBox(height: 16),
          CustomTextFormField(
            hint: 'Content',
            maxLine: 5,
          ),
          SizedBox(height: 32),
        ],
      ),
    );
  }
}
