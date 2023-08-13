import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodninja/core/screens.dart';
import 'package:foodninja/presentation/widgets/default_button.dart';
import 'package:sizer/sizer.dart';

import '../../style/colors.dart';

class DoneScreen extends StatelessWidget {
  const DoneScreen({Key? key}) : super(key: key);

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
                    Padding(
                      padding:  EdgeInsets.only(top: 16.h),
                      child: Center(
                        child: SvgPicture.asset('assets/done.svg'),
                      ),
                    ),
                    SizedBox(
                      height: 4.h,
                    ),
                    Center(
                      child: Text('Congrats!',style: TextStyle(
                        color: secondLinear,
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                    SizedBox(height: 3.h,),
                    Center(
                      child: Text('Your Profile Is Ready To Use',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp
                      ),),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: 22.h),
                      child: DefaultButton(text: 'Try Order', function: (){
                        Navigator.pushNamedAndRemoveUntil(context, homeLayout, (route) => false);

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
