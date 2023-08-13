import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:foodninja/core/screens.dart'as screens;
import '../../style/colors.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
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
                              Navigator.pushNamed(context,screens.homeLayout);
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
                        padding:  EdgeInsets.only(right: 10.w),
                        child: Material(
                          color: Colors.white,
                          elevation: 3,
                          borderRadius: BorderRadius.circular(15.sp),
                          child: InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, screens.chatDetails);
                            },
                            child: Container(
                              height: 10.h,
                              child:ListTile(
                                contentPadding: EdgeInsets.all(5.sp),
                                leading: Image.asset('assets/profile0.png',),
                                title: Text('Ahmed Adel',style: TextStyle(fontWeight: FontWeight.bold),),
                                subtitle: Text('your order Just arrived!',style: TextStyle(
                                  color: Colors.grey
                                ),),
                                trailing: Text('20:00',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey
                                ),),

                              ) ,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Padding(
                        padding:  EdgeInsets.only(right: 10.w),
                        child: Material(
                          color: Colors.white,
                          elevation: 3,
                          borderRadius: BorderRadius.circular(15.sp),
                          child: Container(
                            height: 10.h,
                            child:ListTile(
                              contentPadding: EdgeInsets.all(5.sp),
                              leading: Image.asset('assets/profile1.png',),
                              title: Text('Sara Khaled',style: TextStyle(fontWeight: FontWeight.bold),),
                              subtitle: Text('your order Just arrived!',style: TextStyle(
                                  color: Colors.grey
                              ),),
                              trailing: Text('20:00',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey
                              ),),

                            ) ,
                          ),
                        ),
                      ),
                      SizedBox(height: 2.h,),
                      Padding(
                        padding:  EdgeInsets.only(right: 10.w),
                        child: Material(
                          color: Colors.white,
                          elevation: 3,
                          borderRadius: BorderRadius.circular(15.sp),
                          child: Container(
                            height: 10.h,
                            child:ListTile(
                              contentPadding: EdgeInsets.all(5.sp),
                              leading: Image.asset('assets/profile4.png',),
                              title: Text('Ahmed Adel',style: TextStyle(fontWeight: FontWeight.bold),),
                              subtitle: Text('your order Just arrived!',style: TextStyle(
                                  color: Colors.grey
                              ),),
                              trailing: Text('20:00',style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey
                              ),),

                            ) ,
                          ),
                        ),
                      ),



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
