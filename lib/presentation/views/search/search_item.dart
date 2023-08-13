import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:foodninja/core/screens.dart'as screens;
import '../../../data/remote/response/search/search_response.dart';

class SearchItem extends StatelessWidget {
  final DataSearch model;
  const SearchItem({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 5.w),
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context, screens.menuDeatailsScreen);
        },
        child: Material(
          elevation: 3,
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.sp),
          child: ListTile(
            title: Text(model.name,style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14.sp,
              color: Colors.black
            ),),
            subtitle: Text(model.description),
            trailing: Padding(
              padding:  EdgeInsets.only(bottom: 0.5.h),
              child: Text('\$${model.price}',style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.yellow[300],
                fontSize: 13.sp
              ),),
            ),

          ),
        ),
      ),
    );
  }
}
