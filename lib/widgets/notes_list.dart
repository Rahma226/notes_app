import 'package:flutter/material.dart';
import 'package:notes_app/components/custom_note_item.dart';

class NotesList extends StatelessWidget {
  const NotesList({super.key});

  // final colors = const [
  //   Kcolor1 , Kcolor2 , Kcolor3
  // ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 4),
            child:  CustomNoteItem(
            ),
          );
        },
      ),
    );
  }
}
