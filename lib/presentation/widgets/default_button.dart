import 'package:flutter/material.dart';
import 'package:foodninja/presentation/style/colors.dart';
import 'package:sizer/sizer.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function function;
  const DefaultButton({
    Key? key,
    required this.text,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 7.h,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 21.w),
      decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [firstLinear, secondLinear]),
          borderRadius: BorderRadius.circular(10.sp)),
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Text(
          text,
          style:  TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 12.sp),
        ),
      ),
    );
  }
}
