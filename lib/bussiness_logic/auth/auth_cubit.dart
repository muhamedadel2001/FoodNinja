import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodninja/core/constantsTextFormField.dart';
import 'package:foodninja/core/my_cache_keys.dart';

import 'package:foodninja/data/local/cashe/my_cache.dart';
import 'package:foodninja/data/remote/request/auth/login_request.dart';
import 'package:foodninja/data/remote/request/auth/signup_request.dart';
import 'package:foodninja/data/remote/response/auth/login_response.dart';
import 'package:foodninja/data/remote/response/auth/signup_response.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:image_picker/image_picker.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  static AuthCubit get(context) => BlocProvider.of<AuthCubit>(context);
  final GoogleSignIn googleSignIn = GoogleSignIn();
  GoogleSignInAccount? _user;
  GoogleSignInAccount get user => _user!;
  LoginResponse loginResponse = LoginResponse();
  SignupResponse signupResponse = SignupResponse();
  File? image;
  bool isHidden = true;
  bool firstCheckBox = false;
  bool secondCheckBox = false;

  IconData suffix = Icons.visibility;
  void changeSuffix() {
    isHidden = !isHidden;
    if (isHidden) {
      suffix = Icons.visibility;
    } else {
      suffix = Icons.visibility_off;
    }
    emit(AuthChangeSuffix());
  }

  void changeFirstCheckBox() {
    firstCheckBox = !firstCheckBox;
    emit(AuthChangeFirstCheckBox());
  }

  void changeSecondCheckBox() {
    secondCheckBox = !secondCheckBox;
    emit(AuthChangeSecondCheckBox());
  }

  void getUser() {
    LoginRequest()
        .loginRequest(email: emailLogin.text, Password: passwordLogin.text)
        .then((value) {
      loginResponse = value;
      if (loginResponse.status == true) {
        MyCache.setString(key: MyCacheKeys.token, value: loginResponse.token);
        emit(AuthLoginSuccess());
      } else {
        loginResponse = value;
        emit(AuthLoginError());
      }
    }).catchError((error) {
      emit(AuthLoginError());
    });
  }

  void signUp() {
    SignupRequest()
        .signupRequest(
            email: emailSignup.text,
            password: passwordSignup.text,
            name: nameSignup.text,
            mobile: mobile.text)
        .then((value) {
      signupResponse = value;
      MyCache.setString(key: MyCacheKeys.token, value: signupResponse.token);
      print(MyCache.getString(key: MyCacheKeys.token));
      emit(AuthSignupSuccess());
    }).catchError((error) {
      emit(AuthSignupError());
    });
  }

  void uploadImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) {
      return;
    }
    final imageTemporary = File(image.path);
    this.image = imageTemporary;
    MyCache.setString(key: MyCacheKeys.photo, value: image.path.toString());
    emit(AuthUoloadPhoto());
  }

  void pickImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.camera);
    if (image == null) {
      return;
    }
    final imageTemporary = File(image.path);
    this.image = imageTemporary;
    MyCache.setString(key: MyCacheKeys.photo, value: image.path.toString());
    emit(AuthUoloadPhoto());
  }

  void signupGoogle() async {
    final googleUser = await googleSignIn.signIn();
    MyCache.setString(key: MyCacheKeys.token, value: signupResponse.token);
    print(googleUser?.email);
    if (googleUser == null) return;
    _user = googleUser;
    final googleAuth = await googleUser.authentication;
    final credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);
    await FirebaseAuth.instance.signInWithCredential(credential);
    emit(AuthSignUpWithGoogle());
  }
}
