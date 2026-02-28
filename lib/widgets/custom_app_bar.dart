import 'package:flutter/material.dart';
import 'package:flutter_application_10/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.Title,
    required this.icon,
  });
  final String Title;
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(Title, style: TextStyle(fontSize: 28)),
        Spacer(),
        CustomSearchIcon(icon: icon),
      ],
    );
  }
}
