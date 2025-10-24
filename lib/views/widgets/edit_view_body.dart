import 'package:flutter/material.dart';
import 'package:flutter_application_8/views/widgets/custom_app_bar.dart';
import 'package:flutter_application_8/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            SizedBox(height: 50),
            const CustomAppBar(title: 'Edit Note', icon: Icons.check),
            SizedBox(height: 50),
            CustomTextField(hint: "Title"),
            SizedBox(height: 16),
            CustomTextField(hint: "Content", maxlines: 5),
          ],
        ),
      ),
    );
  }
}
