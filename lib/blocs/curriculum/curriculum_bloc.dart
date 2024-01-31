import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'curriculum_event.dart';
part 'curriculum_state.dart';

class CurriculumBloc extends Bloc<CurriculumEvent, CurriculumState> {
  CurriculumBloc() : super(CurriculumInitial()) {
    on<CurriculumEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
