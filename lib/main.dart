import 'package:flutter/material.dart';
import 'package:flutter_application_10/constants.dart';
import 'package:flutter_application_10/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:flutter_application_10/models/note_model.dart';
import 'package:flutter_application_10/simple_bloc_observer.dart';
import 'package:flutter_application_10/views/notes_view.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await Hive.initFlutter();

  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNoteBox);

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
