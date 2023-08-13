import 'package:flutter/material.dart';
import 'package:foodninja/bussiness_logic/onboarding/onboarding_cubit.dart';
import 'package:foodninja/presentation/widgets/default_button.dart';
import 'package:sizer/sizer.dart';

import '../../views/onboarding/onboarding_item.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  late OnBoardingCubit cubit;
  @override
  void initState() {
    cubit = OnBoardingCubit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: PageView.builder(
              itemBuilder: (context, index) =>
                  OnBoardingItem(model: cubit.list[index]),
              itemCount: cubit.list.length,
              physics: const BouncingScrollPhysics(),
              controller: cubit.onBoardingModelController,
              onPageChanged: (index) => cubit.checkIfLast(index),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(bottom: 5.h),
            child: DefaultButton(
                text: 'Next',
                function: () {
                  if (cubit.isLastView) {
                    cubit.finishOnBoarding(context);
                  } else {
                    cubit.onBoardingModelController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.linear);
                  }
                }),
          ),

        ],
      ),
    );
  }
}
