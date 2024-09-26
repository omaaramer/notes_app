import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/edit_note_body.dart';
import '../components/custom_note_item.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  SearchPageState createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage> {
  late Box<NoteModel> notesBox;
  List<NoteModel> searchResults = [];

  @override
  void initState() {
    super.initState();
    notesBox = Hive.box<NoteModel>(kNoteBox);
  }

  void _search(String query) {
    setState(() {
      searchResults = notesBox.values.where((item) {
        return item.title.contains(query) || item.subTitle.contains(query);
      }).toList();
    });
  }

  void _openNoteDetail(NoteModel note) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditNoteBody(note: note),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Search Example')),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                onChanged: _search,
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                    hintText: 'Search...'),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: searchResults.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      _openNoteDetail(searchResults[index]);
                    },
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 16),
                        child: NoteItem(
                          note: searchResults[index],
                        )),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
