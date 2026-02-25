import 'package:flutter/material.dart';
import 'package:flutter_application_10/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: "Title",
        contentPadding: EdgeInsets.symmetric(
          vertical: 22,
          horizontal: 16,
        ),
        labelStyle: TextStyle(color: KPrimaryColor, fontSize: 22),
        hintText: "هنا عنوان الملاحظة ",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: Colors.white, width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2),
        ),
      ),
    );
  }
}
