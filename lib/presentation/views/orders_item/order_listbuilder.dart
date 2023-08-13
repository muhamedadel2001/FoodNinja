import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodninja/bussiness_logic/orders/orders_cubit.dart';
import 'package:foodninja/presentation/views/orders_item/order_item.dart';
import 'package:sizer/sizer.dart';
import 'package:foodninja/core/screens.dart'as screens;

import '../../style/colors.dart';

class OrderListBuilder extends StatelessWidget {
  final List<Map> orders;

  const OrderListBuilder({Key? key, required this.orders}) : super(key: key);

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
                            Navigator.pushNamed(context, screens.homeLayout);
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
                                  'Order Details',
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ])),
                      Stack(
                        children: [
                          BlocBuilder<OrdersCubit, OrdersState>(
                            builder: (context, state) {
                              return ListView.separated(
                                shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) => OrderItem(
                                        orderModel: orders[index],
                                      ),
                                  separatorBuilder: (context, index) => Divider(
                                        height: 2.h,
                                        color: Colors.transparent,
                                      ),
                                  itemCount: orders.length);
                            },
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 55.h,
                            ),
                            child: Container(
                              margin: EdgeInsets.only(right: 8.w),
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                    colors: [firstLinear, secondLinear]),
                                borderRadius: BorderRadius.circular(15.sp),
                              ),
                              alignment: Alignment.center,
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
                                          padding:  EdgeInsets.only(top: 1.h,left: 2.w),
                                          child: Text('Sub-Total',style: TextStyle(
                                            fontSize: 12.sp,color: Colors.white
                                          ),),
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.only(top: 1.5.h,right: 10.w),
                                          child: Text('120 \$',style: TextStyle(
                                              fontSize: 12.sp,color: Colors.white),
                                          ),
                                        )],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.only(top: 6.h,left: 2.w),
                                        child: Text('Delivery-Charge',style: TextStyle(
                                            fontSize: 12.sp,color: Colors.white
                                        ),),
                                      ),
                                      Padding(
                                        padding:  EdgeInsets.only(top: 6.h,right: 10.w),
                                        child: Text('10 \$',style: TextStyle(
                                            fontSize: 12.sp,color: Colors.white),
                                        ),
                                      )],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.only(top: 9.h,left: 2.w),
                                        child: Text('Discount',style: TextStyle(
                                            fontSize: 12.sp,color: Colors.white
                                        ),),
                                      ),
                                      Padding(
                                        padding:  EdgeInsets.only(top: 11.h,right: 10.w),
                                        child: Text('10 \$',style: TextStyle(
                                            fontSize: 12.sp,color: Colors.white),
                                        ),
                                      )],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.only(top: 14.h,left: 2.w),
                                        child: Text('Total',style: TextStyle(
                                            fontSize: 12.sp,color: Colors.white
                                        ),),
                                      ),
                                      Padding(
                                        padding:  EdgeInsets.only(top: 15.h,right: 10.w),
                                        child: Text('150 \$',style: TextStyle(
                                            fontSize: 12.sp,color: Colors.white),
                                        ),
                                      )],
                                  ),
                                  Padding(
                                    padding:  EdgeInsets.only(top: 18.h),
                                    child: InkWell(
                                      onTap: (){

                                      },
                                      child: InkWell(
                                        onTap: (){
                                          Navigator.pushNamed(context, screens.confirmScreen);
                                        },
                                        child: Container(
                                          width: double.infinity,
                                          height: 5.h,
                                          margin: EdgeInsets.symmetric(horizontal: 5.w),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10.sp),
                                            color: Colors.white ,
                                          ),
                                          child: Center(
                                              child: Text('Place My Order',style: TextStyle(
                                                color: firstLinear,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12.sp
                                              ),)),
                                        ),
                                      ),
                                    ),
                                  )
                                ],

                                  ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
