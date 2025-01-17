import 'package:bloc/bloc.dart';
// import 'package:car_rent/features/auth/presentation/view_model/signup/bloc/signup_bloc.dart';
import 'package:car_renthol/features/auth/presentation/view_model/signup/bloc/signup_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({required SignupBloc signupBloc}) : super(LoginState.initial()) {
    on<NavigateRegisterScreenEvent>((event, emit) {
      _handleNavigationToRegisterScreen(event);
    });
  }

  void _handleNavigationToRegisterScreen(NavigateRegisterScreenEvent event) {
    Navigator.push(
      event.context,
      MaterialPageRoute(
        builder: (context) => event.destination, // Navigate to SignUpPage
      ),
    );
  }
}
