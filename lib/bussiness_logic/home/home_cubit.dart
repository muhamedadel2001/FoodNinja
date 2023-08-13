import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodninja/data/remote/request/home/restaurant_request.dart';
import 'package:foodninja/presentation/screens/chats/chats_screen.dart';
import 'package:foodninja/presentation/screens/home/home_screen.dart';
import 'package:foodninja/presentation/screens/orders/ordres_screen.dart';
import 'package:foodninja/presentation/screens/profile/profile_screen.dart';
import 'package:meta/meta.dart';

import '../../data/remote/response/home/restaurant_response.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  static HomeCubit get(context) => BlocProvider.of<HomeCubit>(context);
  HomeCubit() : super(HomeInitial());
  int currIndex=0;
  List<Widget>screens=[
    const HomeScreen(),
    const Profile(),
    const Orders(),
    const Chats(),
  ];
  void changeBottom(int index){
    currIndex=index;
    emit(HomeChangeBottomState());
  }
  Restaurant restaurant = Restaurant();


  void getRestaurant() {
    emit(HomeLoadingState());
     RestaurantRequest().restaurantRequest().then((value) {
      restaurant = value;
      emit(HomeSuccessState());
    }).catchError((err) {
      emit(HomeFailedState());
    });
  }
}
