import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:foodninja/core/screens.dart'as screens;
import '../../style/colors.dart';
class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
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

                        SizedBox(
                          height: 1.5.h,
                        ),
                        const Text(
                          'Popular Menu',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                       SizedBox(

                         height:4.0.h
                       ),
                       Padding(
                         padding:  EdgeInsets.only(right: 10.w),
                         child: InkWell(
                           onTap: (){
                             Navigator.pushNamed(context, screens.menuDeatailsScreen);
                           },
                           child: Material(
                             color: Colors.white,
                             elevation: 5,
                             borderRadius: BorderRadius.circular(15.sp),
                             child: Container(
                               width: double.infinity,
                               child:   ListTile(
                                 leading: Image.asset('assets/m1.png'),
                                 title: Text('Herbal Pancake',style: TextStyle(fontWeight: FontWeight.bold),),
                                 subtitle: Text('Warung Herbal',style: TextStyle(color: Colors.grey),),
                                 trailing: Text('\$7',style: TextStyle(
                                   color: Colors.yellow,
                                   fontSize: 15.sp
                                 ),),

                               ),
                             ),
                           ),
                         ),
                       ),
                        SizedBox(

                            height:2.0.h
                        ),
                        Padding(
                          padding:  EdgeInsets.only(right: 10.w),
                          child: Material(
                            color: Colors.white,
                            elevation: 5,
                            borderRadius: BorderRadius.circular(15.sp),
                            child: Container(
                              width: double.infinity,
                              child:   ListTile(
                                leading: Image.asset('assets/m2.png'),
                                title: Text('Fruit Salad',style: TextStyle(fontWeight: FontWeight.bold),),
                                subtitle: const Text('Wijie Resto',style: TextStyle(color: Colors.grey),),
                                trailing: Text('\$5',style: TextStyle(
                                    color: Colors.yellow,
                                    fontSize: 15.sp
                                ),),

                              ),
                            ),
                          ),
                        ),
                        SizedBox(

                            height:2.0.h
                        ),
                        Padding(
                          padding:  EdgeInsets.only(right: 10.w),
                          child: Material(
                            color: Colors.white,
                            elevation: 5,
                            borderRadius: BorderRadius.circular(15.sp),
                            child: Container(
                              width: double.infinity,
                              child:   ListTile(
                                leading: Image.asset('assets/m3.png'),
                                title: Text('Green Noddle',style: TextStyle(fontWeight: FontWeight.bold),),
                                subtitle: const Text('Noodle Home',style: TextStyle(color: Colors.grey),),
                                trailing: Text('\$15',style: TextStyle(
                                    color: Colors.yellow,
                                    fontSize: 15.sp
                                ),),

                              ),
                            ),
                          ),
                        ),
                        SizedBox(

                            height:2.0.h
                        ),
                        Padding(
                          padding:  EdgeInsets.only(right: 10.w),
                          child: Material(
                            color: Colors.white,
                            elevation: 5,
                            borderRadius: BorderRadius.circular(15.sp),
                            child: Container(
                              width: double.infinity,
                              child:   ListTile(
                                leading: Image.asset('assets/eat.png'),
                                title: Text('Green Noddle',style: TextStyle(fontWeight: FontWeight.bold),),
                                subtitle: Text('Noodle Home',style: TextStyle(color: Colors.grey),),
                                trailing: Text('\$15',style: TextStyle(
                                    color: Colors.yellow,
                                    fontSize: 15.sp
                                ),),

                              ),
                            ),
                          ),
                        ),
                        SizedBox(

                            height:2.0.h
                        ),
                        Padding(
                          padding:  EdgeInsets.only(right: 10.w),
                          child: Material(
                            color: Colors.white,
                            elevation: 5,
                            borderRadius: BorderRadius.circular(15.sp),
                            child: Container(
                              width: double.infinity,
                              child:   ListTile(
                                leading: Image.asset('assets/food.png'),
                                title: Text('Green Noddle',style: TextStyle(fontWeight: FontWeight.bold),),
                                subtitle: Text('Noodle Home',style: TextStyle(color: Colors.grey),),
                                trailing: Text('\$15',style: TextStyle(
                                    color: Colors.yellow,
                                    fontSize: 15.sp
                                ),),

                              ),
                            ),
                          ),
                        ),
                        SizedBox(

                            height:2.0.h
                        ),
                        Padding(
                          padding:  EdgeInsets.only(right: 10.w),
                          child: Material(
                            color: Colors.white,
                            elevation: 5,
                            borderRadius: BorderRadius.circular(15.sp),
                            child: Container(
                              width: double.infinity,
                              child:   ListTile(
                                leading: Image.asset('assets/menu.png'),
                                title: Text('Green Noddle',style: TextStyle(fontWeight: FontWeight.bold),),
                                subtitle: Text('Noodle Home',style: TextStyle(color: Colors.grey),),
                                trailing: Text('\$15',style: TextStyle(
                                    color: Colors.yellow,
                                    fontSize: 15.sp
                                ),),

                              ),
                            ),
                          ),
                        ),
                        SizedBox(

                            height:2.0.h
                        ),
                        Padding(
                          padding:  EdgeInsets.only(right: 10.w),
                          child: Material(
                            color: Colors.white,
                            elevation: 5,
                            borderRadius: BorderRadius.circular(15.sp),
                            child: Container(
                              width: double.infinity,
                              child:   ListTile(
                                leading: Image.asset('assets/m3.png'),
                                title: Text('Green Noddle',style: TextStyle(fontWeight: FontWeight.bold),),
                                subtitle: Text('Noodle Home',style: TextStyle(color: Colors.grey),),
                                trailing: Text('\$15',style: TextStyle(
                                    color: Colors.yellow,
                                    fontSize: 15.sp
                                ),),

                              ),
                            ),
                          ),
                        ),
                        SizedBox(

                            height:2.0.h
                        ),
                        Padding(
                          padding:  EdgeInsets.only(right: 10.w),
                          child: Material(
                            color: Colors.white,
                            elevation: 5,
                            borderRadius: BorderRadius.circular(15.sp),
                            child: Container(
                              width: double.infinity,
                              child:   ListTile(
                                leading: Image.asset('assets/m3.png'),
                                title: const Text('Green Noddle',style: TextStyle(fontWeight: FontWeight.bold),),
                                subtitle: Text('Noodle Home',style: TextStyle(color: Colors.grey),),
                                trailing: Text('\$15',style: TextStyle(
                                    color: Colors.yellow,
                                    fontSize: 15.sp
                                ),),

                              ),
                            ),
                          ),
                        ),
                        SizedBox(

                            height:2.0.h
                        ),
                        Padding(
                          padding:  EdgeInsets.only(right: 10.w),
                          child: Material(
                            color: Colors.white,
                            elevation: 5,
                            borderRadius: BorderRadius.circular(15.sp),
                            child: Container(
                              width: double.infinity,
                              child:   ListTile(
                                leading: Image.asset('assets/m3.png'),
                                title: Text('Green Noddle',style: TextStyle(fontWeight: FontWeight.bold),),
                                subtitle: Text('Noodle Home',style: TextStyle(color: Colors.grey),),
                                trailing: Text('\$15',style: TextStyle(
                                    color: Colors.yellow,
                                    fontSize: 15.sp
                                ),),

                              ),
                            ),
                          ),
                        ),
                        SizedBox(

                            height:2.0.h
                        ),
                        Padding(
                          padding:  EdgeInsets.only(right: 10.w),
                          child: Material(
                            color: Colors.white,
                            elevation: 5,
                            borderRadius: BorderRadius.circular(15.sp),
                            child: SizedBox(
                              width: double.infinity,
                              child:   ListTile(
                                leading: Image.asset('assets/m3.png'),
                                title: const Text('Green Noddle',style: TextStyle(fontWeight: FontWeight.bold),),
                                subtitle: const Text('Noodle Home',style: TextStyle(color: Colors.grey),),
                                trailing: Text('\$15',style: TextStyle(
                                    color: Colors.yellow,
                                    fontSize: 15.sp
                                ),),

                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              
              ],
              
              
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.red,
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 8.w),
                )
              ],
            )

          

          ],
        ),
      ),

    );
  }
}
