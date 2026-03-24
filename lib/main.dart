import 'package:flutter/material.dart';
import 'package:flutter_application_10/constants.dart';
import 'package:flutter_application_10/models/note_model.dart';
import 'package:flutter_application_10/views/notes_view.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();

  await Hive.openBox(kNoteBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: "Poppins",
      ),

      home: const NotesView(),
    );
  }
}
