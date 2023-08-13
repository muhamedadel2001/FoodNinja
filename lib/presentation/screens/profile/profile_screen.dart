import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodninja/core/my_cache_keys.dart';
import 'package:foodninja/data/local/cashe/my_cache.dart';
import 'package:sizer/sizer.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../../style/colors.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        /* body: Image.file(
      File(MyCache.getString(key: MyCacheKeys.photo)),
      fit: BoxFit.cover,
      height: 100.h,
      width: 100.w,
    )*/
        body: SlidingUpPanel(
            parallaxEnabled: true,
            parallaxOffset: 0.5,
            borderRadius: BorderRadius.circular(40.sp),
            minHeight: 40.h,
            maxHeight: 90.h,
            body: Image.file(
              File(MyCache.getString(key: MyCacheKeys.photo)),
              width: 100.w,
              height: 100.h,
              fit: BoxFit.fill,
            ),
            panelBuilder: (ScrollController scroll) {
              return SingleChildScrollView(
                child: Material(
                  borderRadius: BorderRadius.circular(20.sp),
                  child: Padding(
                    padding: EdgeInsets.only(top: 1.h, left: 5.w),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.circular(10.sp)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 0.5.h),
                          Center(
                            child: Container(
                              width: 30,
                              height: 5,
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.yellowAccent.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(15.sp)),
                            width: 30.w,
                            height: 4.h,
                            child: const Center(
                              child: Text(
                                'Member Gold',
                                style: TextStyle(color: Colors.orange),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Anam Wusono',
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 120),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.edit,
                                      color: firstLinear,
                                    )),
                              )
                            ],
                          ),
                          Text(
                            'anamwp66@gmail.com',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 12.sp),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30),
                            child: Material(
                              color: Colors.white,
                              elevation: 3,
                              borderRadius: BorderRadius.circular(10.sp),
                              child: SizedBox(
                                height: 8.h,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 4.w),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/voucher.svg',
                                        width: 11.w,
                                      ),
                                      SizedBox(
                                        width: 4.w,
                                      ),
                                      const Text(
                                        'You Have 3 Voucher',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Text(
                            'Favourites',
                            style: TextStyle(
                                fontSize: 12.sp, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 4.w),
                            child: Material(
                              color: Colors.white,
                              elevation: 3,
                              borderRadius: BorderRadius.circular(50.sp),
                              child: SizedBox(
                                height: 12.h,
                                child: ListTile(
                                  leading: Image.asset('assets/card1.png'),
                                  title: Padding(
                                    padding: EdgeInsets.only(top: 1.5.h),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'Spacy Fresh Crab',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Wareoink Kieta',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        Text(
                                          '\$35',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: firstLinear,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  trailing: Padding(
                                    padding: EdgeInsets.only(top: 1.5.h),
                                    child: Container(
                                      width: 22.w,
                                      height: 4.h,
                                      decoration: BoxDecoration(
                                          gradient: const LinearGradient(
                                              colors: [
                                                firstLinear,
                                                secondLinear
                                              ]),
                                          borderRadius:
                                              BorderRadius.circular(10.sp)),
                                      child: const Center(
                                        child: (Text('Buy Again')),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 4.w),
                            child: Material(
                              color: Colors.white,
                              elevation: 3,
                              borderRadius: BorderRadius.circular(50.sp),
                              child: SizedBox(
                                height: 12.h,
                                child: ListTile(
                                  leading: Image.asset('assets/ice.png'),
                                  title: Padding(
                                    padding: EdgeInsets.only(top: 1.5.h),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'Spacy Fresh Crab',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Wareoink Kieta',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        Text(
                                          '\$35',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: firstLinear,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  trailing: Padding(
                                    padding: EdgeInsets.only(top: 1.5.h),
                                    child: Container(
                                      width: 22.w,
                                      height: 4.h,
                                      decoration: BoxDecoration(
                                          gradient: const LinearGradient(
                                              colors: [
                                                firstLinear,
                                                secondLinear
                                              ]),
                                          borderRadius:
                                              BorderRadius.circular(10.sp)),
                                      child: const Center(
                                        child: (Text('Buy Again')),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 4.w),
                            child: Material(
                              color: Colors.white,
                              elevation: 3,
                              borderRadius: BorderRadius.circular(50.sp),
                              child: SizedBox(
                                height: 12.h,
                                child: ListTile(
                                  leading: Image.asset('assets/pasta.png'),
                                  title: Padding(
                                    padding: EdgeInsets.only(top: 1.5.h),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'Spacy Fresh Crab',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Wareoink Kieta',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        Text(
                                          '\$35',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: firstLinear,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  trailing: Padding(
                                    padding: EdgeInsets.only(top: 1.5.h),
                                    child: Container(
                                      width: 22.w,
                                      height: 4.h,
                                      decoration: BoxDecoration(
                                          gradient: const LinearGradient(
                                              colors: [
                                                firstLinear,
                                                secondLinear
                                              ]),
                                          borderRadius:
                                              BorderRadius.circular(10.sp)),
                                      child: const Center(
                                        child: (Text('Buy Again')),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }));
  }
}
