import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../style/colors.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

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
                    Padding(
                      padding:  EdgeInsets.only(bottom: 5.h),
                      child: Image.asset('assets/Image.png'),
                    ),
                    Text('Courtney Henry',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp,
                    ),),
                    SizedBox(
                      height: 0.5.h,
                    ),
                    Text('10:23 Min',style: TextStyle(
                      color: Colors.grey
                    ),),
                    Padding(
                      padding:  EdgeInsets.only(top: 15.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            Container(
                              width: 15.w,
                              height: 15.h,
                              decoration: BoxDecoration(
                                color:  Colors.green[50],
                                shape: BoxShape.circle
                              ),
                              child: Icon(Icons.volume_up,color: Colors.green,),
                            ),
                          SizedBox(
                            width: 6.w,
                          ),
                          InkWell(
                            onTap:
                            (){

                            },
                            child: Container(
                              width: 15.w,
                              height: 15.h,
                              decoration: BoxDecoration(
                                  color:  Colors.red[500],
                                  shape: BoxShape.circle
                              ),
                              child: Icon(Icons.close,color: Colors.white,),
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

