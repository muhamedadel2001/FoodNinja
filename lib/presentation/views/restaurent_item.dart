import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:foodninja/core/screens.dart'as screens;


import '../../data/remote/response/home/restaurant_response.dart';

class RestaurentItem extends StatelessWidget {
  final DataRestaurent model;
  const RestaurentItem({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return InkWell(
     onTap: (){
       Navigator.pushNamed(context,screens.homeDetails);
     },
     child: Material(
       elevation: 5,
       color: Colors.white,
       borderRadius: BorderRadius.circular(15),
       child: Container(
         margin: EdgeInsets.symmetric(vertical: 10),
         alignment: Alignment.center,
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [

             Text(model.tags1,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
             Text(model.deliveryTime)
           ],
         )
       ),
     ),
   );

  }
}
