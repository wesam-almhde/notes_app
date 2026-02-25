import 'package:flutter/material.dart';
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
      child: Column(
        spacing: 32,
        children: [CustomTextField(), CustomTextField()],
      ),
    );
  }
}
