import 'package:flutter/material.dart';

import '../components/custom_note_item.dart';

class NotListView extends StatelessWidget {
  const NotListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListView.builder(
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: NoteItem());
            }),
      ),
    );
  }
}
