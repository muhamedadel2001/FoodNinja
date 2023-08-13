import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodninja/core/my_cache_keys.dart';
import 'package:foodninja/data/local/cashe/my_cache.dart';
import '../../../core/screens.dart' as screens;

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(milliseconds: 1000), () {
      if (MyCache.getString(key: MyCacheKeys.token) != '') {
       // print(MyCache.getString(key: MyCacheKeys.token));
        Navigator.pushNamedAndRemoveUntil(
            context, screens.homeLayout, (route) => false);
      } else {
        bool? isLast = MyCache.getBool(key: MyCacheKeys.isOnBoardingViewed);
        if (isLast!) {
          Navigator.pushNamedAndRemoveUntil(
              context, screens.signup, (route) => false);
        } else {
          Navigator.pushNamedAndRemoveUntil(
              context, screens.onBoarding, (route) => false);
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            SvgPicture.asset('assets/Pattern.svg'),
            Image.asset('assets/Logo.png'),
          ],
        ),
      ),
    );
  }
}
