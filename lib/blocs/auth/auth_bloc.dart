import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      try {
        await event.when(
            checkAuth: () => _onCheckAuth(emit),
            login: (email, pass) => _onLogin(email, pass, emit),
            logout: (username) => _onLogout(username, emit));
      } catch (e) {
        debugPrint('Auth error ${e.toString()}');
        emit(AuthState.error(e.toString()));
      }
    });
  }

  _onCheckAuth(Emitter<AuthState> emit) async {
    if (Supabase.instance.client.auth.currentSession == null) {
      emit(const AuthState.notLoggedin());
      return;
    }
    emit(const AuthState.loggedin());
  }

  _onLogin(String email, String pass, Emitter<AuthState> emit) async {
    if (email.isEmpty) {
      emit(const AuthState.error('Sorry, email is empty!'));
      return;
    }
    if (pass.isEmpty) {
      emit(const AuthState.error('Sorry, password is empty!'));
      return;
    }
    emit(const AuthState.loggingin());
    final result = await Supabase.instance.client.auth.signInWithPassword(
      email: email,
      password: pass,
    );
    if (result.session == null) {
      emit(const AuthState.failed('Sorry, login failed, please try again!'));
      return;
    }
    emit(const AuthState.success());
  }

  _onLogout(String username, Emitter<AuthState> emit) async {
    emit(const AuthState.loggingout());
    await Supabase.instance.client.auth.signOut();
    emit(const AuthState.logout());
  }
}

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkAuth() = _CheckAuth;
  const factory AuthEvent.login(String email, String password) = _Login;
  const factory AuthEvent.logout(String username) = _Logout;
}

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = _AuthInitial;
  const factory AuthState.loggedin() = _AuthLoggedin;
  const factory AuthState.notLoggedin() = _AuthNotLoggedin;
  const factory AuthState.loggingin() = _AuthLoggingin;
  const factory AuthState.loggingout() = _AuthLogginout;
  const factory AuthState.logout() = _AuthLogout;
  const factory AuthState.success() = _AuthSuccess;
  const factory AuthState.failed(String msg) = _AuthFailed;
  const factory AuthState.error(String msg) = _AuthError;
}
