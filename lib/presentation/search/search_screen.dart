import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodninja/bussiness_logic/search/search_cubit.dart';
import 'package:foodninja/presentation/views/search/search_item.dart';
import 'package:sizer/sizer.dart';

import '../style/colors.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  void initState() {

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
                          padding:  EdgeInsets.only(top: 4.h),
                          child: Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(right: 15.w),

                            decoration: BoxDecoration(
                                color: Colors.orange[50],
                                borderRadius: BorderRadius.circular(10.sp)
                            ),
                            child: TextFormField(
                              onChanged: (value)=>SearchCubit.get(context).searchWithKey(value),
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 3.w),
                                  hintText: 'What Do You Want Order ?',
                                  hintStyle: TextStyle(color: Colors.orange[400]),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.sp),
                                      borderSide: BorderSide(
                                          color: Colors.transparent
                                      )
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.transparent
                                      ),
                                      borderRadius: BorderRadius.circular(10.sp)
                                  )

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
            BlocBuilder<SearchCubit, SearchState>(
              builder: (context, state) {
                return Padding(
                  padding:  EdgeInsets.only(bottom: 2.h),
                  child: ListView.separated(
                    shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => SearchItem(
                          model:
                          SearchCubit.get(context).found[index]),
                      separatorBuilder: (context, index) => Divider(
                        height: 2.h,
                        color: Colors.transparent,
                      ),
                      itemCount:
                      SearchCubit.get(context).found.length),
                );
              },
            ),



          
          ],
        ),
      ),

      /*  body: Column(
      children: [
        Padding(
          padding:  EdgeInsets.only(top: 5.h),
          child: TextFormField(

          ),
        ),
        Expanded(
          child: BlocBuilder<SearchCubit, SearchState>(
            builder: (context, state) {
              return ListView.separated(
                  itemBuilder: (context, index) => SearchItem(
                      model:
                          SearchCubit.get(context).found[index]),
                  separatorBuilder: (context, index) => Divider(
                        height: 1.h,
                        color: Colors.transparent,
                      ),
                  itemCount:
                      SearchCubit.get(context).found.length);
            },
          ),
        ),
      ],
    )*/);
  }
}
