

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodninja/bussiness_logic/auth/auth_cubit.dart';
import 'package:foodninja/core/screens.dart'as screens;
import 'package:foodninja/presentation/screens/auth/save_photo.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';


import '../../style/colors.dart';
import '../../widgets/default_button.dart';

class UploadPhoto extends StatefulWidget {
  const UploadPhoto({Key? key}) : super(key: key);

  @override
  State<UploadPhoto> createState() => _UploadPhotoState();
}

class _UploadPhotoState extends State<UploadPhoto> {
 late AuthCubit cubit;
 @override
  void initState() {
   cubit=AuthCubit.get(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                      padding:  EdgeInsets.only(top: 4.h),
                      child: InkWell(
                        onTap: (){
                          cubit.uploadImage();
                        },

                        child: Container(
                            width: double.infinity,
                            height: 15.h,
                            decoration: BoxDecoration(
                                color: Colors.grey[50],
                                borderRadius: BorderRadius.circular(20.sp)
                            ),
                            child: Center(child: SvgPicture.asset('assets/gallery.svg'))
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 2.h),
                      child: InkWell(
                        onTap: (){
                          cubit.pickImage();
                        },
                        child: Container(
                            width: double.infinity,
                            height: 15.h,
                            decoration: BoxDecoration(
                                color: Colors.grey[50],
                                borderRadius: BorderRadius.circular(20.sp)
                            ),
                            child: Center(child: SvgPicture.asset('assets/camera.svg'))
                        ),
                      ),
                    ),


                    Padding(
                      padding:  EdgeInsets.only(top: 25.h),
                      child: DefaultButton(text: 'Next', function: (){
                        Navigator.pushNamed(context, screens.savePhoto);
                      }),
                    )
                  ],),),),],),),);
  }
}
