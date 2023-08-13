import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodninja/bussiness_logic/home/home_cubit.dart';
import 'package:foodninja/core/my_cache_keys.dart';
import 'package:foodninja/data/local/cashe/my_cache.dart';
import 'package:foodninja/presentation/screens/orders/ordres_screen.dart';
import 'package:foodninja/presentation/style/colors.dart';
import 'package:sizer/sizer.dart';

class HomeLayOut extends StatefulWidget {
  const HomeLayOut({Key? key}) : super(key: key);

  @override
  State<HomeLayOut> createState() => _HomeLayOutState();
}

class _HomeLayOutState extends State<HomeLayOut> {
  late HomeCubit cubit;

  @override
  void initState() {
    cubit = HomeCubit.get(context);
    print(MyCache.getString(key: MyCacheKeys.token));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            children: [
              cubit.screens[cubit.currIndex],
              Padding(
                padding: EdgeInsets.only(left: 5.w, right: 5.w, bottom: 3.h),
                child: Align(
                  alignment: Alignment(0.0, 1.0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.sp),
                      child: Material(
                        elevation: 3,
                        color: Colors.white,
                        child: BlocConsumer<HomeCubit, HomeState>(
                          listener: (context, state) {},
                          builder: (context, state) {
                            if (cubit.currIndex != 2) {
                              return BottomNavigationBar(
                                currentIndex: cubit.currIndex,
                                onTap: (index) => cubit.changeBottom(index),
                                selectedItemColor: firstLinear,
                                unselectedItemColor: Colors.green[100],
                                items: [
                                  BottomNavigationBarItem(
                                    icon: Icon(Icons.home),
                                    label: 'Home',
                                  ),
                                  BottomNavigationBarItem(
                                    icon: Icon(Icons.person_sharp),
                                    label: 'Profile',
                                  ),
                                  BottomNavigationBarItem(
                                    icon: Icon(Icons.card_membership_sharp),
                                    label: 'Orders',
                                  ),
                                  BottomNavigationBarItem(
                                    icon: Icon(Icons.chat_bubble_outline),
                                    label: 'Chats',
                                  ),
                                ],
                              );
                            }
                            return const Orders();
                          },
                        ),
                      )),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
