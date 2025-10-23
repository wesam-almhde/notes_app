import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, bottom: 24, left: 16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 248, 194, 57),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            textColor: Colors.black,
            iconColor: Colors.black,
            titleTextStyle: TextStyle(fontSize: 30),
            title: Text("Flutter Tips"),

            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                "Build your Career with wesam almhde",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black.withValues(alpha: .6),
                ),
              ),
            ),
            trailing: IconButton(
              iconSize: 40,
              onPressed: () {},
              icon: Icon(Icons.delete),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Text(
              "May 21, 2022",
              style: TextStyle(
                color: Colors.black.withValues(alpha: .6),
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
