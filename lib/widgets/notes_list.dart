import 'package:flutter/material.dart';
import 'package:notes_app/components/custom_note_item.dart';

class NotesList extends StatelessWidget {
  const NotesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return const Padding(
          padding:  EdgeInsets.symmetric(vertical: 8),
          child:  CustomNoteItem(),
        );
      },
    );
  }
}
