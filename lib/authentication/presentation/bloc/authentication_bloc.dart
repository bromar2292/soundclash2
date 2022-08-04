import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_bloc.freezed.dart';
part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(const AuthenticationState.initial()) {
    on<AuthenticationEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
