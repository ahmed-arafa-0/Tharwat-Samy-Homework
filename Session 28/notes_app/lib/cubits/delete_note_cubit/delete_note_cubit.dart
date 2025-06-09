import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../models/note_model.dart';

part 'delete_note_state.dart';

class DeleteNoteCubit extends Cubit<DeleteNoteState> {
  DeleteNoteCubit() : super(DeleteNoteInitial());

    deleteProduct({required NoteModel noteModel}) async {
    emit(DeleteNoteLoading());
    try {
      //
      emit(DeleteNoteSuccess());
    } catch (e) {
      emit(DeleteNoteFailure(errMessage: e.toString()));
    }
  }
}
