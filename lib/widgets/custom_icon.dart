import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(16),
      ),

      child: Center(
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
          color: Colors.white,
          iconSize: 25,
        ),
      ),
    );
  }
}
