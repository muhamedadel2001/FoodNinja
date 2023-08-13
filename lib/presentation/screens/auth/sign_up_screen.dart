import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodninja/bussiness_logic/auth/auth_cubit.dart';
import 'package:foodninja/core/constantsTextFormField.dart';
import 'package:foodninja/core/screens.dart';
import 'package:foodninja/presentation/screens/auth/information_screen.dart';
import 'package:sizer/sizer.dart';

import '../../../data/remote/response/auth/login_response.dart';
import '../../../data/remote/response/auth/signup_response.dart';
import '../../style/colors.dart';
import '../../widgets/default_button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late AuthCubit cubit;
  GlobalKey<FormState> globalKey = GlobalKey();

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
                child: BlocBuilder<AuthCubit, AuthState>(
                  builder: (context, state) {
                    return Form(
                      child: Column(
                        //mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Sign Up For Free ',
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
                                controller: nameSignup,
                                keyboardType: TextInputType.name,
                                scrollPhysics: const ScrollPhysics(),
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(
                                    Icons.person_sharp,
                                    color: secondLinear,
                                  ),
                                  contentPadding:
                                      EdgeInsetsDirectional.symmetric(
                                          vertical: 1.h, horizontal: 4.w),
                                  label: const Text(
                                    "Name",
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
                                    return 'name  can\'t  be empty';
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
                                controller: emailSignup,
                                keyboardType: TextInputType.emailAddress,
                                scrollPhysics: const ScrollPhysics(),
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(
                                    Icons.email,
                                    color: secondLinear,
                                  ),
                                  contentPadding:
                                      EdgeInsetsDirectional.symmetric(
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
                                    return 'Email  can\'t  be empty';
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
                                controller: passwordSignup,
                                obscureText: cubit.isHidden,
                                keyboardType: TextInputType.visiblePassword,
                                scrollPhysics: const ScrollPhysics(),
                                decoration: InputDecoration(
                                  prefixIcon: const Icon(
                                    Icons.lock,
                                    color: secondLinear,
                                  ),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      cubit.changeSuffix();
                                    },
                                    icon: Icon(cubit.suffix),
                                    color: secondLinear,
                                  ),
                                  contentPadding:
                                      EdgeInsetsDirectional.symmetric(
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
                                  } else if (value.length < 6) {
                                    return 'password cant be less than 6 characters';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 3.w),
                                child: Checkbox(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(6.sp)),
                                  activeColor: secondLinear,
                                  value: cubit.firstCheckBox,
                                  onChanged: (val) {
                                    cubit.changeFirstCheckBox();
                                  },
                                ),
                              ),
                              Text(
                                'Keep Me Signed In',
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  color: Colors.black87,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 3.3.w),
                                child: Checkbox(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(6.sp)),
                                  activeColor: secondLinear,
                                  value: cubit.secondCheckBox,
                                  onChanged: (val) {
                                    cubit.changeSecondCheckBox();
                                  },
                                ),
                              ),
                              Text(
                                'Email Me About Special Pricing',
                                style: TextStyle(
                                  fontSize: 11.sp,
                                  color: Colors.black87,
                                ),
                              )
                            ],
                          ),

                          /*   TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Dont Have Account?',
                            style: TextStyle(
                              color: firstLinear,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          )),*/
                          Padding(
                            padding: EdgeInsets.only(top: 5.h),
                            child: DefaultButton(
                                text: 'Create Account',
                                function: () {
                                  Navigator.pushNamed(
                                    context,
                                    information,
                                  );
                                }),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, login);
                              },
                              child: const Text(
                                'already have an account?',
                                style: TextStyle(
                                  color: firstLinear,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                ),
                              ))
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
