import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodninja/core/my_cache_keys.dart';
import 'package:foodninja/core/screens.dart';
import 'package:foodninja/data/local/cashe/my_cache.dart';
import 'package:meta/meta.dart';

import '../../data/local/models/onboarding_model/onboardingmodel.dart';
part 'onboarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  static OnBoardingCubit get(context) =>
      BlocProvider.of<OnBoardingCubit>(context);
  OnBoardingCubit() : super(OnBoardingInitial());
  bool isLastView = false;
  PageController onBoardingModelController = PageController();
  final List<OnBoardingModel> list = [
    OnBoardingModel(
        image: 'assets/Illustartion.svg',
        title: 'Find your  Comfort Food here',
        body:
            'Here You Can find a chef or dish for every taste and color. Enjoy!'),
    OnBoardingModel(
        image: 'assets/burger.svg',
        title: 'Food Ninja is Where Your Comfort Food Lives',
        body: 'Enjoy a fast and smooth food delivery at your doorstep'),
  ];
  void checkIfLast(int index){
if(index==list.length-1){
  isLastView=true;
}
else{
  isLastView=false;
}
emit(OnBoardingCheckLast());

  }
  void finishOnBoarding(BuildContext context){
    MyCache.setBool(key: MyCacheKeys.isOnBoardingViewed, value: isLastView);
    Navigator.pushNamed(context, signup);
  }
  

}
