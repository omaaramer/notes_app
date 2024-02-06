import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 30),
            CustomAppBar(),
            SizedBox(height: 30),
            NoteItem(),
          ],
        ),
      ),
    );
  }
}
