import 'package:flutter/material.dart';
import '../components/custom_app_bar.dart';
import 'notes_list_view.dart';

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
            CustomAppBar(
              text: 'Notes',
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            NotListView()
          ],
        ),
      ),
    );
  }
}
