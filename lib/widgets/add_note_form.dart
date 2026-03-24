import 'package:flutter/material.dart';
import 'package:flutter_application_10/widgets/custom_button.dart';
import 'package:flutter_application_10/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        spacing: 32,
        children: [
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            labelText: "Title",
            hintText: "ادخل العنوان هنا ",
          ),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            labelText: "Content",
            hintText: "أدخل النص واو المحتوي هنا ",
            maxLines: 4,
          ),
          CustomButton(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
            },
          ),
        ],
      ),
    );
  }
}
