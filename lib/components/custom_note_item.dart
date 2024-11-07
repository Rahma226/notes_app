import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class CustomNoteItem extends StatefulWidget {
  const CustomNoteItem({super.key, required this.note});

  final NoteModel note;

  @override
  _CustomNoteItemState createState() => _CustomNoteItemState();
}

class _CustomNoteItemState extends State<CustomNoteItem> {
  bool _isVisible = true;

  void _deleteNote() {
    setState(() {
      _isVisible = false; // Start the fade-out animation
    });

    // Delay the deletion to allow the animation to complete
    Future.delayed(const Duration(milliseconds: 300), () {
      widget.note.delete();
      BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: _isVisible ? 1.0 : 0.0,
      duration: const Duration(milliseconds: 300),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return EditNoteView(note: widget.note);
              },
            ),
          );
        },
        child: Container(
          padding: const EdgeInsets.only(top: 24, bottom: 24, left: 16),
          decoration: BoxDecoration(
            color: Color(widget.note.color),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  widget.note.title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 16),
                  child: Text(
                    widget.note.subTitle,
                    style: TextStyle(
                      color: Colors.black.withOpacity(.5),
                      fontSize: 16,
                    ),
                  ),
                ),
                trailing: IconButton(
                  onPressed: _deleteNote,
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 24,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text(
                  widget.note.date,
                  style: TextStyle(
                    color: Colors.black.withOpacity(.5),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}