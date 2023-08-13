import 'package:flutter/material.dart';
import 'package:foodninja/bussiness_logic/auth/auth_cubit.dart';
import 'package:foodninja/bussiness_logic/orders/orders_cubit.dart';
import 'package:foodninja/presentation/widgets/default_button.dart';
import 'package:sizer/sizer.dart';
import 'package:sliding_sheet/sliding_sheet.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../style/colors.dart';

class MenuDetails extends StatefulWidget {
  const MenuDetails({Key? key}) : super(key: key);

  @override
  State<MenuDetails> createState() => _MenuDetailsState();
}

class _MenuDetailsState extends State<MenuDetails> {
  late AuthCubit cubit;
  @override
  void initState() {
    cubit = AuthCubit.get(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        /*body: Stack(
        children: [
          Image.asset(
            'assets/photo.png',
            width: 100.w,
            height: 100.h,
            fit: BoxFit.fill,
          )
        ],
      ),*/
        body: SlidingUpPanel(
            parallaxEnabled: true,
            parallaxOffset: 0.5,
            borderRadius: BorderRadius.circular(40.sp),
            minHeight: 45.h,
            maxHeight: 85.h,
            body: Image.asset(
              'assets/strab.png',
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
                          Row(
                            children: [
                              Container(
                                width: 20.w,
                                height: 3.h,
                                decoration: BoxDecoration(
                                    color: Colors.green.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(10.sp)),
                                child: Center(
                                    child: Text(
                                  'Popular',
                                  style: TextStyle(
                                      color: firstLinear,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp),
                                )),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 53.w),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 35,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        color: Colors.green.withOpacity(0.2),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        Icons.location_pin,
                                        color: firstLinear,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 3.w,
                                    ),
                                    Container(
                                      width: 35,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        color:
                                            Colors.redAccent.withOpacity(0.2),
                                        shape: BoxShape.circle,
                                      ),
                                      child: const Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Text(
                            'Rainbow Sandwich Sugarless',
                            style: TextStyle(
                                fontSize: 15.sp, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star_half,
                                color: firstLinear,
                              ),
                              Text(
                                '4.8 Ratings',
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(
                                width: 0.5.w,
                              ),
                              Icon(
                                Icons.shopping_bag_outlined,
                                color: firstLinear,
                              ),
                              Text(
                                '2000+ Orders ',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Text(
                              "Nulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt. Velit non est cillum consequat cupidatat ex Lorem laboris labore aliqua ad duis eu laborum. Strowberry Cream  "),
                          SizedBox(
                            height: 1.5.h,
                          ),
                          Text(
                            'Testimonials',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15.sp),
                          ),
                          SizedBox(height: 0.5.h),

                          SizedBox(
                            height: 1.h,
                          ),

                          SizedBox(
                            height: 2.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 3.w),
                            child: Material(
                              borderRadius: BorderRadius.circular(15.sp),
                              elevation: 3,
                              color: Colors.white,
                              child: Container(
                                height: 20.h,
                                child: ListTile(
                                  leading: Image.asset('assets/profile.png'),
                                  title: Padding(
                                    padding: EdgeInsets.only(top: 1.5.h),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Dianne Russell',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '12 April 2021',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        SizedBox(
                                          height: 1.5.h,
                                        ),
                                        Flexible(
                                          child: Text(
                                            'This Is great, So delicious! You Must Here, With Your family . . ',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  trailing: Container(
                                    width: 10.w,
                                    height: 4.h,
                                    decoration: BoxDecoration(
                                        color: Colors.green.withOpacity(0.1),
                                        borderRadius:
                                            BorderRadius.circular(15.sp)),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: firstLinear,
                                        ),
                                        SizedBox(
                                          width: 0.5.w,
                                        ),
                                        Text(
                                          '5',
                                          style: TextStyle(color: firstLinear),
                                        )
                                      ],
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
                            padding: EdgeInsets.only(right: 3.w),
                            child: Material(
                              borderRadius: BorderRadius.circular(15.sp),
                              elevation: 3,
                              color: Colors.white,
                              child: Container(
                                height: 20.h,
                                child: ListTile(
                                  leading: Image.asset('assets/profile2.png'),
                                  title: Padding(
                                    padding: EdgeInsets.only(top: 1.5.h),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Dianne Russell',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '12 April 2021',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        SizedBox(
                                          height: 1.5.h,
                                        ),
                                        Flexible(
                                          child: Text(
                                            'This Is great, So delicious! You Must Here, With Your family . . ',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  trailing: Container(
                                    width: 10.w,
                                    height: 4.h,
                                    decoration: BoxDecoration(
                                        color: Colors.green.withOpacity(0.1),
                                        borderRadius:
                                            BorderRadius.circular(15.sp)),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: firstLinear,
                                        ),
                                        SizedBox(
                                          width: 0.5.w,
                                        ),
                                        Text(
                                          '5',
                                          style: TextStyle(color: firstLinear),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(top: 3.h),
                            child: Container(
                                child: DefaultButton(
                                    text: 'Add To Chart',
                                    function: () {
                                      OrdersCubit.get(context).addOrder(
                                        name: 'asasdd',
                                        price: 200,
                                        img: 'assets/card3.png',
                                        curValue: 2,
                                      );
                                    })),
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
