import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class AddModelBottomSheet extends StatelessWidget {
  const AddModelBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 32),
          CustomTetField(),
        ],
      ),
    );
  }
}
