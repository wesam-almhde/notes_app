import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_10/cubits/notes_cubit/notes_cubit.dart';
import 'package:flutter_application_10/models/note_model.dart';
import 'package:flutter_application_10/widgets/custom_note_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<NotesCubit, NotesState>(
        builder: (context, state) {
          List<NoteModel> notes =
              BlocProvider.of<NotesCubit>(context).notes!;
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: notes.length - 10,
              itemBuilder: (BuildContext context, int index) {
                return NoteItem();
              },
            ),
          );
        },
      ),
    );
  }
}
