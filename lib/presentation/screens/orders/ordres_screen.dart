import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodninja/bussiness_logic/orders/orders_cubit.dart';
import 'package:foodninja/presentation/views/orders_item/order_item.dart';
import 'package:foodninja/presentation/views/orders_item/order_listbuilder.dart';
import 'package:sizer/sizer.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key, }) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  late List<Map> orders;

  @override
  void initState() {
    orders=OrdersCubit.get(context).orders;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersCubit, OrdersState>(
      builder: (context, state) {
        return OrderListBuilder(orders:orders,
        );
      },
    );
  }
}
