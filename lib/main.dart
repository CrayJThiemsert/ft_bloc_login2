import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:authentication_repository/authentication_repository.dart';
import 'package:ft_bloc_login2/simple_bloc_observer.dart';
import 'package:user_repository/user_repository.dart';
import 'app.dart';

void main() {
  /// We are injecting a single instance AuthenticationRepository and UserRepository into the App widget.
  Bloc.observer = SimpleBlocObserver();
  runApp(App(
    authenticationRepository: AuthenticationRepository(),
    userRepository: UserRepository(),
  ));
}

