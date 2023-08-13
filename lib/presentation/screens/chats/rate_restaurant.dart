import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:foodninja/core/screens.dart' as screens;
import '../../style/colors.dart';

class RateRestaurant extends StatelessWidget {
  const RateRestaurant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundPay,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                    width: 100.w,
                    height: 100.h,
                    child: SvgPicture.asset(
                      'assets/Pattern.svg',
                      fit: BoxFit.fill,
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: Image.asset('assets/rate3.png')),
                    SizedBox(
                      height: 1.h,
                    ),
                    Center(
                        child: Text(
                      '    Thank You!\nEnjoy Your Meal',
                      style: TextStyle(
                          fontSize: 17.sp, fontWeight: FontWeight.bold),
                    )),
                    SizedBox(
                      height: 1.h,
                    ),
                    Center(
                      child: Text(
                        'Please rate your restaurant',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Center(child: Image.asset('assets/star.png')),
                    SizedBox(
                      height: 6.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.w, right: 4.w),
                      child: Material(
                        borderRadius: BorderRadius.circular(25.sp),
                        color: Colors.white,
                        elevation: 3,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: 'leave feedback',
                                prefixIcon: Icon(
                                  Icons.edit_road_rounded,
                                  color: secondLinear,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.sp),
                                  borderSide: BorderSide(color: Colors.black26),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.sp),
                                  borderSide: BorderSide(color: Colors.black26),
                                )),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.h),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 2,
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamedAndRemoveUntil(context,
                                      screens.homeLayout, (route) => false);
                                },
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 4.w),
                                  height: 8.h,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(10.sp),
                                      gradient: LinearGradient(
                                          colors: [firstLinear, secondLinear])),
                                  child: Center(
                                      child: Text(
                                    'Submit',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.sp),
                                  )),
                                ),
                              )),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: 3.w),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamedAndRemoveUntil(context,
                                      screens.homeLayout, (route) => false);
                                },
                                child: Material(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8.sp),
                                  elevation: 3,
                                  child: Container(
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 4.w),
                                    height: 6.h,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.sp),
                                        color: Colors.white),
                                    child: Center(
                                        child: Text(
                                      'Skip',
                                      style: TextStyle(
                                          color: secondLinear,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10.sp),
                                    )),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
