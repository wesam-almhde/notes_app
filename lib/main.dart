import 'package:flutter/material.dart';
import 'package:flutter_application_8/views/notes_view.dart';

void main() async {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: "Poppins",
      ),
      home: const NotesView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
