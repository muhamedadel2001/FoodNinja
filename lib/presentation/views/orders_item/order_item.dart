import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodninja/bussiness_logic/orders/orders_cubit.dart';
import 'package:foodninja/presentation/style/colors.dart';
import 'package:sizer/sizer.dart';

class OrderItem extends StatefulWidget {
  final Map orderModel;

  const OrderItem({Key? key, required this.orderModel}) : super(key: key);

  @override
  State<OrderItem> createState() => _OrderItemState();
}

class _OrderItemState extends State<OrderItem> {
late OrdersCubit cubit;
@override
  void initState() {
    cubit=OrdersCubit.get(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      background: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.sp),
          color: Colors.orange,
        ),
        width: 10.w,
        child: Padding(
          padding: EdgeInsets.only(left: 65.w),
          child: Icon(
            Icons.delete_outline_outlined,
            color: Colors.white,
          ),
        ),
      ),
      key: UniqueKey(),
      onDismissed: (direction) async {
        await OrdersCubit.get(context).deleteOrder(id: widget.orderModel['id']);
      },
      child: Padding(
        padding: EdgeInsets.only(right: 10.w),
        child: Material(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.sp),
          elevation: 3,
          child: SizedBox(
            height: 12.h,
            key: UniqueKey(),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 1.w),
                    child: Image.asset('${widget.orderModel['img']}'),
                  ),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.only(top: 0.5.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Text(
                              '${widget.orderModel['name']}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15.sp),
                            )),
                        SizedBox(
                          height: 0.5.h,
                        ),
                        Expanded(
                            child: Text(
                              'Waroenk kita',
                              style: TextStyle(color: Colors.grey),
                            )),
                        Expanded(
                            child: Text(
                              "${widget.orderModel['price'].toString()}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: firstLinear,
                                  fontSize: 13.sp),
                            )),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.green[200],
                      borderRadius: BorderRadius.circular(5.sp)),
                  width: 30,
                  height: 25,
                  child: Icon(
                    Icons.remove,
                    color: Colors.green,
                  ),
                ),
                SizedBox(
                  width: 3.w,
                ),
                BlocBuilder<OrdersCubit, OrdersState>(

                  builder: (context, state) {
                    print(OrdersCubit.get(context).sum);
                    //print(widget.orderModel['curValue']*widget.orderModel['id']);
                    //print(widget.orderModel['curValue']);
                    return Flexible(
                        child: Text("${widget.orderModel['curValue'].toString()}"));
                  },
                ),
                SizedBox(
                  width: 3.w,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: firstLinear,
                      borderRadius: BorderRadius.circular(5.sp)),
                  width: 30,
                  height: 25,
                  child: InkWell(
                      onTap: () =>
                        cubit.updateOrder(
                              curValue: ++widget.orderModel['curValue'],
                              id: widget.orderModel['id']),
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
