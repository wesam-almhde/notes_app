import 'package:flutter/material.dart';
import 'package:flutter_application_8/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
        Spacer(),
        CustomSearchIcon(icon: icon),
      ],
    );
  }
}
