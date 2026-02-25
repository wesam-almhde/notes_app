import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 22),
      padding: const EdgeInsets.only(top: 24, bottom: 24),
      decoration: BoxDecoration(
        color: const Color(0xffFFcC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            titleTextStyle: TextStyle(fontSize: 26),
            iconColor: Colors.black,
            textColor: Colors.black,
            title: Text("Flutter Tips"),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                "Build your acreer Wesam Almhde",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black.withValues(alpha: .5),
                ),
              ),
            ),
            trailing: IconButton(
              iconSize: 25,
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.trash),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 28),
            child: Text(
              "May 21 , 2022",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black.withValues(alpha: .5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
