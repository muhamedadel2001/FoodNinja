import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodninja/presentation/style/colors.dart';
import 'package:foodninja/presentation/widgets/default_button.dart';
import 'package:sizer/sizer.dart';
import 'package:foodninja/core/screens.dart'as screens;
class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
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
                    SizedBox(
                      width: 9.w,
                      height: 5.h,
                      child: Material(
                        color: backContainer.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(7.sp),
                        elevation: 15.sp,
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
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.h),
                      child: Text(
                        'Payment Method',
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
                      padding: EdgeInsets.only(top: 4.h),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                            width: double.infinity,
                            height: 10.h,
                            decoration: BoxDecoration(
                                color: Colors.grey[50],
                                borderRadius: BorderRadius.circular(20.sp)),
                            child: Center(
                                child: SvgPicture.asset('assets/paypal.svg'))),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.h),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                            width: double.infinity,
                            height: 10.h,
                            decoration: BoxDecoration(
                                color: Colors.grey[50],
                                borderRadius: BorderRadius.circular(20.sp)),
                            child: Center(
                                child: SvgPicture.asset('assets/visa.svg'))),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2.h),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                            width: double.infinity,
                            height: 10.h,
                            decoration: BoxDecoration(
                                color: Colors.grey[50],
                                borderRadius: BorderRadius.circular(20.sp)),
                            child: Center(
                                child:
                                    SvgPicture.asset('assets/payooner.svg'))),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 25.h),
                      child: DefaultButton(text: 'Next', function: () {
                        Navigator.pushNamed(context,screens.uploadPhoto );
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
