import 'package:flutter/material.dart';
import 'package:flutter_application_10/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:flutter_application_10/models/note_model.dart';
import 'package:flutter_application_10/widgets/custom_button.dart';
import 'package:flutter_application_10/widgets/custom_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

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
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    var currentdate = DateTime.now();
                    var formattedCurrentDate =
                        "${DateFormat.yMd().format(currentdate)} ${DateFormat.Hm().format(currentdate)}";
                    var noteModel = NoteModel(
                      title: title!,
                      subtitle: subTitle!,
                      date: formattedCurrentDate,
                      color: Colors.blue.toARGB32(),
                    );
                    BlocProvider.of<AddNoteCubit>(
                      context,
                    ).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                  }
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
