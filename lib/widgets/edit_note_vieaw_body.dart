import 'package:flutter/material.dart';
import 'package:notes_app/components/custom_text_field.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

class EditNoteVieawBody extends StatelessWidget {
  const EditNoteVieawBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 42,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.edit,
          ),
          SizedBox(
            height: 32,
          ),
          CustomTextField(hint: 'Title'),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'Contenet',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
