import 'package:flutter/material.dart';
import 'package:flutter_application_10/widgets/custom_button.dart';
import 'package:flutter_application_10/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 42,
      ),
      child: SingleChildScrollView(
        child: Column(
          spacing: 32,
          children: [
            CustomTextField(
              labelText: "Title",
              hintText: "ادخل العنوان هنا ",
            ),
            CustomTextField(
              labelText: "Content",
              hintText: "أدخل النص واو المحتوي هنا ",
              maxLines: 4,
            ),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}
