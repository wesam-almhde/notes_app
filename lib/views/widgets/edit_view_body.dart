import 'package:flutter/material.dart';
import 'package:flutter_application_8/views/widgets/custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(height: 50),
            const CustomAppBar(title: 'Edit Note', icon: Icons.check),
          ],
        ),
      ),
    );
  }
}
