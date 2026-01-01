import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:note_app/domain/model/note.dart';
import 'package:note_app/domain/use_case/use_cases.dart';
import 'package:note_app/domain/util/note_order.dart';
import 'package:note_app/domain/util/order_type.dart';
import 'package:note_app/presentation/notes/notes_event.dart';
import 'package:note_app/presentation/notes/notes_state.dart';

@injectable
class NotesViewModel with ChangeNotifier {
  final UseCases useCases;

  NotesState _state = NotesState(
    notes: [],
    noteOrder: const NoteOrder.date(OrderType.descending()),
    isOrderSectionVisible: false,
  );

  NotesState get state => _state;

  Note? _recentlyDeletedNote;

  NotesViewModel(this.useCases) {
    _loadNotes();
  }

  void onEvent(NotesEvent event) {
    switch (event) {
      case LoadNotes():
        _loadNotes();
      case DeleteNote(:final note):
        _deleteNote(note);
      case RestoreNote():
        _restoreNote();
      case ChangeOrder(:final noteOrder):
        _state = state.copyWith(noteOrder: noteOrder);
        _loadNotes();
      case ToggleOrderSection():
        _state = state.copyWith(
          isOrderSectionVisible: !state.isOrderSectionVisible,
        );
        notifyListeners();
    }
  }

  Future<void> _loadNotes() async {
    // call 생략 가능
    List<Note> notes = await useCases.getNotes(state.noteOrder);
    _state = state.copyWith(notes: notes);
    notifyListeners();
  }

  Future<void> _deleteNote(Note note) async {
    await useCases.deleteNote(note);
    _recentlyDeletedNote = note;

    await _loadNotes();
  }

  Future<void> _restoreNote() async {
    if (_recentlyDeletedNote != null) {
      // call 생략 가능
      await useCases.addNote.call(_recentlyDeletedNote!);
      _recentlyDeletedNote = null;

      _loadNotes();
    }
  }
}
