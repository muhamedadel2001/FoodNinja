import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodninja/presentation/style/colors.dart';
import 'package:sizer/sizer.dart';

import '../../../data/local/models/onboarding_model/onboardingmodel.dart';

class OnBoardingItem extends StatelessWidget {
  final OnBoardingModel model;
  const OnBoardingItem({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      //crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(flex: 5, child: SvgPicture.asset(model.image)),
        Flexible(
            child: Padding(
          padding: EdgeInsets.only(top: 0.2.h, bottom: 3.h),
          child: Text(
            model.title,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
                color: text),
          ),
        )),
        Flexible(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Text(
            model.body,
            maxLines: 4,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12.sp,
              overflow: TextOverflow.ellipsis,
              color: tile,
            ),
          ),
        ))
      ],
    );
  }
}
