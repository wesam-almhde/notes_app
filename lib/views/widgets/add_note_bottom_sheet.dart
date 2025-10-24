import 'package:flutter/material.dart';
import 'package:flutter_application_8/views/widgets/custom_button.dart';
import 'package:flutter_application_8/views/widgets/custom_text_tield.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            CustomTextTield(hint: "Title"),
            SizedBox(height: 20),
            CustomTextTield(hint: "content", maxlines: 5),
            SizedBox(height: 35),
            CustomButtom(),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
