part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthChangeSuffix extends AuthState {}

class AuthChangeFirstCheckBox extends AuthState {}

class AuthChangeSecondCheckBox extends AuthState {}

class AuthLoadingLogin extends AuthState {}

class AuthLoginSuccess extends AuthState {}

class AuthLoginError extends AuthState {}


class AuthSignupSuccess extends AuthState {}

class AuthSignupError extends AuthState {}

class AuthUoloadPhoto extends AuthState {}


class AuthSignUpWithGoogle extends AuthState {}


class AuthSignOutWithGoogle extends AuthState {}


