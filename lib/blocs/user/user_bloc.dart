import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserState.initial()) {
    on<UserEvent>((event, emit) async {
      await event.map(load: (e) => _onUserLoad(emit));
    });
  }

  _onUserLoad(Emitter<UserState> emit) async {
    if (Supabase.instance.client.auth.currentSession == null) {
      emit(const UserState.error('Sorry, no user login!'));
      return;
    }
    emit(UserState.loaded(Supabase.instance.client.auth.currentUser!));
  }
}

@freezed
abstract class UserEvent with _$UserEvent {
  const factory UserEvent.load() = _UserLoad;
}

@freezed
abstract class UserState with _$UserState {
  const factory UserState.initial() = _UserInitial;
  const factory UserState.loaded(User user) = _UserLoaded;
  const factory UserState.error(String msg) = _UserError;
}
