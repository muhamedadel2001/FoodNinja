import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodninja/bussiness_logic/home/home_cubit.dart';
import 'package:foodninja/bussiness_logic/search/search_cubit.dart';
import 'package:foodninja/presentation/views/restaurent_item.dart';
import 'package:sizer/sizer.dart';
import 'package:foodninja/core/screens.dart' as screens;

import '../../style/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late HomeCubit cubit;

  @override
  void initState() {
    cubit = HomeCubit.get(context)..getRestaurant();
    SearchCubit.get(context).getSearch();
    /* ..getRestaurant()*/;
    super.initState();
  }

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
                Container(
                    width: 100.w,
                    height: 30.h,
                    child: SvgPicture.asset(
                      'assets/Pattern.svg',
                      fit: BoxFit.fill,
                    )),
                Padding(
                  padding: EdgeInsets.only(top: 8.h, left: 8.w),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 2.h),
                            child: Row(
                                //crossAxisAlignment: CrossAxisAlignment.start,

                                children: [
                                  Text(
                                    'Find Your \nFavorite Food',
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 17.w),
                                    child: Stack(
                                      alignment: AlignmentDirectional.center,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.sp),
                                              color: Colors.grey[100]),
                                          width: 10.w,
                                          height: 5.h,
                                        ),
                                        Stack(
                                          alignment:
                                              AlignmentDirectional.topEnd,
                                          children: [
                                            Icon(
                                              Icons.notifications_none_outlined,
                                              size: 7.w,
                                              color: firstLinear,
                                            ),
                                            Container(
                                              width: 1.5.w,
                                              height: 0.8.h,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5.sp),
                                                color: Colors.red,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ])),
                        Padding(
                          padding: EdgeInsets.only(top: 3.h),
                          child: Row(

                              //crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 6.h,
                                  width: 55.w,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(10.sp),
                                      color: backContainer.withOpacity(0.4)),
                                  child: InkWell(
                                    onTap: () {
                                      SearchCubit.get(context).getSearch();
                                      Navigator.pushNamed(
                                          context, screens.searchScreen);
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 5.w),
                                  child: Container(
                                    width: 8.w,
                                    height: 5.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.sp),
                                      color: backContainer.withOpacity(0.4),
                                    ),
                                    child: Icon(
                                      Icons.filter_alt_sharp,
                                      color: backArrow,
                                    ),
                                  ),
                                )
                              ]),
                        ),
                        SizedBox(
                          height: 1.5.h,
                        ),
                        Text(
                          'Popular Restaurant',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 220,
                            crossAxisSpacing: 20,
                            childAspectRatio: 1,
                            mainAxisSpacing: 20),
                    itemBuilder: (context, index) =>
                        RestaurentItem(model: cubit.restaurant.data[index]),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: cubit.restaurant.data.length,
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
