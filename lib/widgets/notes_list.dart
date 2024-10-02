import 'package:flutter/material.dart';
import 'package:notes_app/components/custom_note_item.dart';
import 'package:notes_app/constant.dart';

class NotesList extends StatelessWidget {
  const NotesList({super.key});

  @override
  Widget build(BuildContext context) {
    // final List<Color> colors = [
    //   kcolor4, Kcolor1, Kcolor2 , Kcolor3
    // ];
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
