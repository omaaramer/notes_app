import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.amber[200],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              "Flutter",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
              ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 30,
                )),
            subtitle: const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Text(
                "Flutter is Google's UI toolkit for building beautiful,",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 30),
            child: Text(
              "may, 2024",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
