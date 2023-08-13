import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodninja/presentation/widgets/default_button.dart';
import 'package:sizer/sizer.dart';
import 'package:foodninja/core/screens.dart'as screens;
import '../../style/colors.dart';

class MapAuthScreen extends StatefulWidget {
  const MapAuthScreen({Key? key}) : super(key: key);

  @override
  State<MapAuthScreen> createState() => _MapAuthScreenState();
}

class _MapAuthScreenState extends State<MapAuthScreen> {
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
                        'Set Your Location ',
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
                    SizedBox(
                      height: 5.h,
                    ),
                    Material(
                      color: Colors.white,
                      elevation: 5,
                      borderRadius: BorderRadius.circular(20.sp),
                      child: Container(
                        height: 18.h,
                        width: double.infinity,
                        child: Column(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(top: 1.5.h,left: 3.w),
                              child: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.yellow,
                                    ),

                                      child: Icon(
                                        Icons.location_pin,
                                        color: Colors.orange,
                                        size: 26.sp,
                                      ),),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Text('Your Location',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14.sp
                                  ),)
                                ],
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(top: 3.h),
                              child: InkWell(
                                onTap: (){
                                  Navigator.pushNamed(context, screens.mapScreen);
                                },
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 4.w),
                                  width: double.infinity,
                                  height: 6.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.sp),
                                    color: Colors.grey[350],

                                  ),
                                  child: Center(
                                    child: Text('Set Location',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.sp
                                    ),),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  Padding(
                    padding:  EdgeInsets.only(top:35.h),
                    child: DefaultButton(text: 'Next', function: (){
                      Navigator.pushNamed(context, screens.doneScreen);

                    },),
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
