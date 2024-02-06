import 'package:flutter/material.dart';

import 'custom_note_item.dart';

class NotListView extends StatelessWidget {
  const NotListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(itemBuilder: (context, index) {
        return const Padding(
            padding: EdgeInsets.symmetric(vertical: 8), child: NoteItem());
      }),
    );
  }
}
