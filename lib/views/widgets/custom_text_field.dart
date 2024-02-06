import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomTetField extends StatelessWidget {
  const CustomTetField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: "Title",
        hintStyle: TextStyle(color: kPrimaryColor),
        border: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        width: 2,
        color: color ?? Colors.white,
      ),
    );
  }
}
