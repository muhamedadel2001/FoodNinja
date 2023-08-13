import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:foodninja/core/screens.dart' as screens;
import '../../style/colors.dart';

class ChatDetailsScreen extends StatelessWidget {
  const ChatDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundPay,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                    width: 100.w,
                    height: 30.h,
                    child: SvgPicture.asset(
                      'assets/Pattern.svg',
                      fit: BoxFit.fill,
                    )),
                Padding(
                  padding: EdgeInsets.only(top: 8.h, left: 8.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Material(
                        color: backContainer.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(7.sp),
                        child: IconButton(
                            onPressed: () {
                              Navigator.pushNamed(context, screens.chatsScreen);
                            },
                            icon: Icon(
                              Icons.arrow_back_ios_new,
                              color: backArrow,
                              size: 15.sp,
                            )),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 2.h),
                          child: Row(
                              //crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Text(
                                  'Chats',
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ])),
                      SizedBox(
                        height: 2.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10.w),
                        child: Material(
                          color: Colors.white,
                          elevation: 3,
                          borderRadius: BorderRadius.circular(15.sp),
                          child: Container(
                            height: 10.h,
                            child: ListTile(
                              contentPadding: EdgeInsets.all(5.sp),
                              leading: Image.asset(
                                'assets/profile0.png',
                              ),
                              title: Text(
                                'Ahmed Adel',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              subtitle: Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: firstLinear),
                                    width: 2.w,
                                    height: 2.h,
                                  ),
                                  SizedBox(
                                    width: 1.w,
                                  ),
                                  Text(
                                    'Online',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              trailing: InkWell(
                                onTap: () {},
                                child: Container(
                                  width: 10.w,
                                  height: 10.h,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.green[50]),
                                  child: Icon(
                                    Icons.call,
                                    color: secondLinear,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 1.h),
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(8.sp)),
                        child: Text('Just to order'),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 15.w),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 1.h),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [firstLinear,secondLinear]),
                              borderRadius: BorderRadius.circular(8.sp)),
                          child: Text('okay,for what level of spicences ?',style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp
                          ),),
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 1.h),
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(8.sp)),
                        child: Text('okay wait a minuite'),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 47.w),
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 1.h),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [firstLinear,secondLinear]),
                              borderRadius: BorderRadius.circular(8.sp)),
                          child: Text('ok iam waiting ',style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp
                          ),),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 30.h,right: 8.w),
                        child: Material(
                          borderRadius: BorderRadius.circular(15.sp),
                          color: Colors.white,
                          elevation: 5,
                          child: Container(
                            height: 10.h,
                            child: TextFormField(

                              decoration: InputDecoration(
                                suffixIcon: Icon(Icons.send,color: firstLinear,),
                                hintText: 'OK iam waiting',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.transparent
                                  ),
                                  borderRadius: BorderRadius.circular(10.sp)
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.transparent
                                  ),
                                  borderRadius: BorderRadius.circular(10.sp)
                                )
                              ),

                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
