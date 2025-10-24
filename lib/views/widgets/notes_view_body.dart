import 'package:flutter/material.dart';
import 'package:flutter_application_8/views/widgets/custom_app_bar.dart';
import 'package:flutter_application_8/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 50),
          const CustomAppBar(title: 'Notes', icon: Icons.search),
          NotesListView(),
        ],
      ),
    );
  }
}
