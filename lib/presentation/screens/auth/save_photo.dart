import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodninja/core/my_cache_keys.dart';
import 'package:foodninja/data/local/cashe/my_cache.dart';
import 'package:foodninja/presentation/screens/profile/profile_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:foodninja/core/screens.dart'as screens;

import '../../../bussiness_logic/auth/auth_cubit.dart';
import '../../style/colors.dart';
import '../../widgets/default_button.dart';

class SavePhoto extends StatefulWidget {
  const SavePhoto({Key? key}) : super(key: key);

  @override
  State<SavePhoto> createState() => _SavePhotoState();
}

class _SavePhotoState extends State<SavePhoto> {
  late AuthCubit cubit;
  @override
  void initState() {
    cubit = AuthCubit.get(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundPay,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SvgPicture.asset('assets/Pattern.svg', height: 100.h, width: 100.w),
            Padding(
              padding: EdgeInsets.only(top: 8.h, left: 8.w),
              child: SizedBox(
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
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_new,
                            color: backArrow,
                            size: 15.sp,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.h),
                      child: Text(
                        'Upload Your Photo Profile',
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
                      padding: EdgeInsets.only(top: 12.h),
                      child: Center(

                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(35.sp),
                              child: Image.file(cubit.image!,height: 250,width: 260,))),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 19.h),
                      child: DefaultButton(text: 'Next', function: () {
                        Navigator.pushNamed(context,screens.mapAuthScreen);
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
