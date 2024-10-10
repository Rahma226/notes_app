import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/components/custom_note_item.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';

class NotesList extends StatelessWidget {
  const NotesList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notes!;

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            itemCount: notes.length,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return  Padding(
                padding:const EdgeInsets.symmetric(vertical: 4),
                child: CustomNoteItem(
                  note: notes[index],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
