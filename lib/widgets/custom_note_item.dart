import 'package:flutter/material.dart';
import 'package:flutter_application_10/models/note_model.dart';
import 'package:flutter_application_10/views/edit_note_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) {
              return EditNoteView();
            },
            transitionsBuilder: (
              context,
              animation,
              secondaryAnimation,
              child,
            ) {
              const begin = Offset(1, 0);
              const end = Offset.zero;

              final tween = Tween(begin: begin, end: end);
              final offsetAnimation = animation.drive(tween);

              return SlideTransition(
                position: offsetAnimation,
                child: FadeTransition(
                  opacity: animation,
                  child: child,
                ),
              );
            },
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 22),
        padding: const EdgeInsets.only(top: 24, bottom: 24),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              titleTextStyle: TextStyle(fontSize: 26),
              iconColor: Colors.black,
              textColor: Colors.black,
              title: Text(note.title),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  note.subtitle,
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
                note.date,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black.withValues(alpha: .5),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
