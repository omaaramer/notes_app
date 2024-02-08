import 'package:flutter/material.dart';

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
  String? title, content;
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
              content = value!;
            },
            hint: 'Content',
            maxLine: 5,
          ),
          const SizedBox(height: 32),
          CustomButtun(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                } else {
                  //explain the following line?
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
              text: "Add"),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
