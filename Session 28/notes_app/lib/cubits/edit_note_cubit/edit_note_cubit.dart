import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/note_model.dart';

part 'edit_note_state.dart';

class EditNoteCubit extends Cubit<EditNoteState> {
  EditNoteCubit() : super(EditNoteInitial());

    editProduct({required NoteModel noteModel}) async {
    emit(EditNoteLoading());
    try {
      //
      emit(EditNoteSuccess());
    } catch (e) {
      emit(EditNoteFailure(errMessage: e.toString()));
    }
  }
}
