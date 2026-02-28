import 'package:flutter/material.dart';
import 'package:flutter_application_10/widgets/custom_app_bar.dart';
import 'package:flutter_application_10/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 50),
            CustomAppBar(Title: 'Eigt Note', icon: Icons.check),
          ],
        ),
      ),
    );
  }
}
