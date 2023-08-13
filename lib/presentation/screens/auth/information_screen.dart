import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodninja/bussiness_logic/auth/auth_cubit.dart';
import 'package:foodninja/core/constantsTextFormField.dart';
import 'package:foodninja/core/screens.dart';
import 'package:foodninja/presentation/style/colors.dart';
import 'package:foodninja/presentation/widgets/default_button.dart';
import 'package:sizer/sizer.dart';

import '../../../data/remote/response/auth/signup_response.dart';

class InformationScreen extends StatefulWidget {

  const InformationScreen({Key? key, }) : super(key: key);

  @override
  State<InformationScreen> createState() => _InformationScreenState();
}

class _InformationScreenState extends State<InformationScreen> {
  late AuthCubit cubit;

  GlobalKey<FormState> globalKey = GlobalKey();
@override
  void initState() {
   cubit=AuthCubit.get(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SvgPicture.asset('assets/Pattern.svg', height: 100.h, width: 100.w),
            Padding(
              padding: EdgeInsets.only(top: 8.h, left: 8.w),
              child: Container(
                width: 80.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 9.w,
                      height: 5.h,
                      decoration: BoxDecoration(
                          color: backContainer.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(7.sp)),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                            color: backArrow,
                            size: 15.sp,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.h),
                      child: Text(
                        'Fill in your bio to get started',
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 3.5.h),
                      child: const Text(
                        'This data will be displayed in your account profile for security',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 3.h),
                      child: Container(

                        child: TextFormField(

                          controller: firstName,
                          keyboardType: TextInputType.name,
                          scrollPhysics: const ScrollPhysics(),
                          decoration: InputDecoration(

                            contentPadding: EdgeInsetsDirectional.symmetric(
                                vertical: 1.h, horizontal: 4.w),
                            label: const Text(
                              "First Name",
                            ),
                            labelStyle: const TextStyle(
                              color: Colors.grey,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                15.sp,
                              ),
                              borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.5),
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
                              return ' name can\'t  be empty';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.h),
                      child: Container(

                        child: TextFormField(

                          controller: lastName,
                          keyboardType: TextInputType.name,
                          scrollPhysics: const ScrollPhysics(),
                          decoration: InputDecoration(

                            contentPadding: EdgeInsetsDirectional.symmetric(
                                vertical: 1.h, horizontal: 4.w),
                            label: const Text(
                              "Last Name",
                            ),
                            labelStyle: const TextStyle(
                              color: Colors.grey,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                15.sp,
                              ),
                              borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.5),
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
                              return ' name can\'t  be empty';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.h),
                      child: Container(

                        child: TextFormField(
                          controller: mobile,
                          keyboardType: TextInputType.number,
                          scrollPhysics: const ScrollPhysics(),
                          decoration: InputDecoration(

                            contentPadding: EdgeInsetsDirectional.symmetric(
                                vertical: 1.h, horizontal: 4.w),
                            label: const Text(
                              "Mobile Number",
                            ),
                            labelStyle: const TextStyle(
                              color: Colors.grey,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                15.sp,
                              ),
                              borderSide: BorderSide(
                                color: Colors.grey.withOpacity(0.5),
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
                              return 'Mobile Number can\'t  be empty';
                            }
                            return null;
                          },
                        ),
                      ),
                    ),  Padding(
                      padding:  EdgeInsets.only(top: 35.h),
                      child: DefaultButton(text: 'Next', function: (){
                        Navigator.pushNamed(context, payment);
                         cubit.signUp();
                         print(cubit.signupResponse.massege?.email![0]);
                      }),
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
}
