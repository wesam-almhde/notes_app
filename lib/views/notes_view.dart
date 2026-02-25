import 'package:flutter/material.dart';
import 'package:flutter_application_10/constants.dart';
import 'package:flutter_application_10/widgets/add_note_bottom_sheet.dart';
import 'package:flutter_application_10/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: KPrimaryColor,
        foregroundColor: Colors.black,
        onPressed: () {
          showModalBottomSheet(
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(22),
            ),
            context: context,
            builder: (context) {
              return AddNoteBottomSheet();
            },
          );
        },
        child: const Icon(Icons.add, size: 33),
      ),
      body: const NotesViewBody(),
    );
  }
}
