import 'package:flutter/material.dart';
import 'package:flutter_application_10/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return NoteItem();
          },
        ),
      ),
    );
  }
}
