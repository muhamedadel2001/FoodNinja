import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import '../../style/colors.dart';

class ConfirmOrder extends StatelessWidget {
  const ConfirmOrder({Key? key}) : super(key: key);

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
                SizedBox(
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
                          child: Row(
                              //crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Confirm Order',
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ])),
                      SizedBox(
                        height: 1.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 7.w),
                        child: Material(
                          elevation: 5,
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.sp),
                          child: SizedBox(
                              height: 10.h,
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 1.h, left: 2.w),
                                        child: const Text(
                                          'Deliver To',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              top: 1.h, right: 2.w),
                                          child: const Text(
                                            'Edit',
                                            style: TextStyle(
                                                color: firstLinear,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 1.h, left: 3.w),
                                    child: Row(
                                      children: [
                                        Container(
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.orange[200]),
                                            child: Icon(
                                              Icons.place,
                                              color: Colors.orange,
                                              size: 25.sp,
                                            )),
                                        Flexible(
                                            child: Padding(
                                          padding: EdgeInsets.only(left: 3.w),
                                          child: Text(
                                            '4517 Washington Ave. Manchester, Kentucky 39495',
                                            style: TextStyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ))
                                      ],
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 7.w),
                        child: Material(
                          elevation: 5,
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.sp),
                          child: SizedBox(
                              height: 10.h,
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 1.h, left: 2.w),
                                        child: const Text(
                                          'Payment Method',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              top: 1.h, right: 2.w),
                                          child: const Text(
                                            'Edit',
                                            style: TextStyle(
                                                color: firstLinear,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 1.h, left: 3.w),
                                    child: Row(children: [
                                      SvgPicture.asset('assets/paypal.svg'),
                                      Padding(
                                        padding: EdgeInsets.only(left: 5.w),
                                        child: const Text(
                                          '2121 6352 8465 ****',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )
                                    ]),
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 7.w, top: 28.h),
              child: Container(
                margin: EdgeInsets.only(right: 8.w),
                decoration: BoxDecoration(
                  gradient:
                      const LinearGradient(colors: [firstLinear, secondLinear]),
                  borderRadius: BorderRadius.circular(15.sp),
                ),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/pattern1.png',
                      fit: BoxFit.fill,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 1.h, left: 2.w),
                          child: Text(
                            'Sub-Total',
                            style:
                                TextStyle(fontSize: 12.sp, color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 1.5.h, right: 10.w),
                          child: Text(
                            '120 \$',
                            style:
                                TextStyle(fontSize: 12.sp, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 6.h, left: 2.w),
                          child: Text(
                            'Delivery-Charge',
                            style:
                                TextStyle(fontSize: 12.sp, color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 6.h, right: 10.w),
                          child: Text(
                            '10 \$',
                            style:
                                TextStyle(fontSize: 12.sp, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 9.h, left: 2.w),
                          child: Text(
                            'Discount',
                            style:
                                TextStyle(fontSize: 12.sp, color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 11.h, right: 10.w),
                          child: Text(
                            '10 \$',
                            style:
                                TextStyle(fontSize: 12.sp, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 14.h, left: 2.w),
                          child: Text(
                            'Total',
                            style:
                                TextStyle(fontSize: 12.sp, color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15.h, right: 10.w),
                          child: Text(
                            '150 \$',
                            style:
                                TextStyle(fontSize: 12.sp, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 18.h),
                      child: InkWell(
                        onTap: () {},
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            width: double.infinity,
                            height: 5.h,
                            margin: EdgeInsets.symmetric(horizontal: 5.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.sp),
                              color: Colors.white,
                            ),
                            child: Center(
                                child: Text(
                              'Place My Order',
                              style: TextStyle(
                                  color: firstLinear,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.sp),
                            )),
                          ),
                        ),
                      ),
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
