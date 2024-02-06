import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';

import 'custom_text_field.dart';

class AddModelBottomSheet extends StatelessWidget {
  const AddModelBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            CustomTetField(
              hint: 'Title',
            ),
            SizedBox(height: 16),
            CustomTetField(
              hint: 'Content',
              maxLine: 5,
            ),
            SizedBox(height: 32),
            CustomButtun(text: "Add"),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
