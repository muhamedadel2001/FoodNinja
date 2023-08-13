import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodninja/bussiness_logic/auth/auth_cubit.dart';
import 'package:foodninja/data/remote/response/auth/login_response.dart';
import 'package:foodninja/presentation/widgets/default_button.dart';
import 'package:sizer/sizer.dart';

import '../../../core/constantsTextFormField.dart';
import '../../../core/screens.dart' as screens;
import '../../style/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> globalKey = GlobalKey();
  late AuthCubit cubit;
  late User model;

  @override
  void initState() {
    super.initState();
    cubit = AuthCubit.get(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          //width: double.infinity,
          // height: double.infinity,
          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              SvgPicture.asset(
                'assets/Pattern.svg',
                height: 100.h,
                width: 100.w,
              ),
              Padding(
                padding: EdgeInsets.only(top: 7.h),
                child: Image.asset('assets/Logo.png'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40.h),
                child: Form(
                  key: globalKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Login To Your Account',
                        style: TextStyle(
                            fontSize: 20.sp,
                            color: text,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 3.h),
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 3.h),
                          child: TextFormField(
                            controller: emailLogin,
                            keyboardType: TextInputType.emailAddress,
                            scrollPhysics: const ScrollPhysics(),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsetsDirectional.symmetric(
                                  vertical: 1.h, horizontal: 4.w),
                              label: const Text(
                                "Email",
                              ),
                              labelStyle: const TextStyle(
                                color: textForm,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  10.sp,
                                ),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 0.8.sp,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  10.sp,
                                ),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 0.8.sp,
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'email name can\'t  be empty';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 1.5.h),
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 3.h),
                          child: TextFormField(
                            controller: passwordLogin,
                            keyboardType: TextInputType.visiblePassword,
                            scrollPhysics: const ScrollPhysics(),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsetsDirectional.symmetric(
                                  vertical: 1.h, horizontal: 4.w),
                              label: const Text(
                                "Password",
                              ),
                              labelStyle: const TextStyle(
                                color: textForm,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  10.sp,
                                ),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 0.8.sp,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  10.sp,
                                ),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 0.8.sp,
                                ),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'password name can\'t  be empty';
                              } else if (value.length < 8) {
                                return 'password cant be less than 8 characters';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 3.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Expanded(
                              child: Divider(
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.symmetric(
                                  horizontal: 2.w),
                              child: Text(
                                'Or Continue With',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  color: text,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Expanded(
                              child: Divider(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        child: Padding(
                          padding: EdgeInsets.only(top: 2.h),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 7.h,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.shade100,
                                            spreadRadius: 0,
                                            offset: const Offset(4.0, 4.0)),
                                        const BoxShadow(
                                            color: Colors.white,
                                            offset: Offset(-4.0, -4.0)),
                                      ],
                                      borderRadius:
                                          BorderRadius.circular(5.sp)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      SvgPicture.asset('assets/face.svg'),
                                      Text(
                                        'Facebook',
                                        style: TextStyle(
                                            color: text,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12.sp),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Expanded(
                                child: Container(
                                  height: 7.h,
                                  decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.shade100,
                                            spreadRadius: 0,
                                            offset: const Offset(4.0, 4.0)),
                                        const BoxShadow(
                                            color: Colors.white,
                                            offset: Offset(-4.0, -4.0)),
                                      ],
                                      color: Colors.grey[100],
                                      borderRadius:
                                          BorderRadius.circular(5.sp)),
                                  child: InkWell(
                                    onTap: () {
                                      cubit.signupGoogle();
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        SvgPicture.asset('assets/google.svg'),
                                        Text(
                                          'Google',
                                          style: TextStyle(
                                              color: text,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12.sp),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 1.h),
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Forgot Your Password?',
                              style: TextStyle(
                                color: firstLinear,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                            )),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              screens.signup,
                            );
                          },
                          child: const Text(
                            'Dont have account?',
                            //cubit.loginResponse.massage,
                            style: TextStyle(
                              color: firstLinear,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          )),
                      BlocConsumer<AuthCubit, AuthState>(
                        listener: (context, state) {
                          if (globalKey.currentState!.validate()) {
                            if (state is AuthLoginSuccess ||
                                state is AuthSignupSuccess) {
                              print(cubit.loginResponse.user.email);
                              Navigator.pushNamed(
                                context,
                                screens.homeLayout,
                              );
                            } else {
                              print(cubit.loginResponse.massage);
                              if (kDebugMode) {
                                print('no');
                              }
                            }
                          }
                        },
                        builder: (context, state) {
                          return DefaultButton(
                              text: 'Login',
                              function: () {
                                cubit.getUser();
                              });
                        },
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
