import 'package:flutter/material.dart';
import 'package:notes_app/widgets/edit_note_vieaw_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteVieawBody(),
    );
  }
}