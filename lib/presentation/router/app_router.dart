import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodninja/presentation/screens/auth/done_screen.dart';
import 'package:foodninja/presentation/screens/auth/information_screen.dart';
import 'package:foodninja/presentation/screens/auth/login_screen.dart';
import 'package:foodninja/presentation/screens/auth/map_auth_screen.dart';
import 'package:foodninja/presentation/screens/auth/payment_method.dart';
import 'package:foodninja/presentation/screens/auth/save_photo.dart';
import 'package:foodninja/presentation/screens/auth/sign_up_screen.dart';
import 'package:foodninja/presentation/screens/auth/upload_photo.dart';
import 'package:foodninja/presentation/screens/chats/call_screen.dart';
import 'package:foodninja/presentation/screens/chats/chat_details_screen.dart';
import 'package:foodninja/presentation/screens/chats/chats_screen.dart';
import 'package:foodninja/presentation/screens/chats/rate_delivery.dart';
import 'package:foodninja/presentation/screens/chats/rate_food.dart';
import 'package:foodninja/presentation/screens/chats/rate_restaurant.dart';
import 'package:foodninja/presentation/screens/home/home_details.dart';
import 'package:foodninja/presentation/screens/home/home_screen.dart';
import 'package:foodninja/presentation/screens/home/menu_details.dart';
import 'package:foodninja/presentation/screens/home/menu_screen.dart';
import 'package:foodninja/presentation/screens/homeLayout/home_layout.dart';
import 'package:foodninja/presentation/screens/map/map_screen.dart';
import 'package:foodninja/presentation/screens/onboarding_screen/onboarding_screen.dart';
import 'package:foodninja/presentation/screens/orders/ordres_screen.dart';
import 'package:foodninja/presentation/screens/profile/profile_screen.dart';
import 'package:foodninja/presentation/search/search_screen.dart';
import 'package:foodninja/presentation/views/orders_item/confirm_order.dart';

import '../../core/screens.dart' as screens;
import '../../core/screens.dart';
import '../../data/remote/response/auth/login_response.dart';
import '../../data/remote/response/auth/signup_response.dart';
import '../screens/splash_screen/splash.dart';

class AppRouter {
  late Widget startScreen;
  Route? onGenerateRoute(RouteSettings settings) {
    startScreen = SplashScreen();
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => startScreen);
      case screens.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case screens.login:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case screens.signup:
        return MaterialPageRoute(builder: (_) => SignUpScreen());
      case screens.information:
        return MaterialPageRoute(builder: (_) => InformationScreen());
      case screens.uploadPhoto:
        return MaterialPageRoute(builder: (_) => UploadPhoto());
      case screens.savePhoto:
        return MaterialPageRoute(builder: (_) => SavePhoto());
      case screens.payment:
        return MaterialPageRoute(builder: (_) => PaymentMethodScreen());
      case screens.homeDetails:
        return MaterialPageRoute(builder: (_) => HomeDetails());
      case screens.menuScreen:
        return MaterialPageRoute(builder: (_) => MenuScreen());
      case screens.profileScreen:
        return MaterialPageRoute(builder: (_) => Profile());
      case screens.confirmScreen:
        return MaterialPageRoute(builder: (_) => ConfirmOrder());
      case screens.searchScreen:
        return MaterialPageRoute(builder: (_) => SearchScreen());
      case screens.menuDeatailsScreen:
        return MaterialPageRoute(builder: (_) => MenuDetails());
      case screens.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case screens.homeLayout:
        return MaterialPageRoute(builder: (_) => HomeLayOut());
      case screens.chatsScreen:
        return MaterialPageRoute(builder: (_) => Chats());
      case screens.callScreen:
        return MaterialPageRoute(builder: (_) => CallScreen());
      case screens.mapScreen:
        return MaterialPageRoute(builder: (_) => MapScreen());
      case screens.mapAuthScreen:
        return MaterialPageRoute(builder: (_) => MapAuthScreen());
      case screens.doneScreen:
        return MaterialPageRoute(builder: (_) => DoneScreen());
      case screens.rateFoodScreen:
        return MaterialPageRoute(builder: (_) => RateFood());
      case screens.rateRestaurantScreen:
        return MaterialPageRoute(builder: (_) => RateRestaurant());
      case screens.chatDetails:
        return MaterialPageRoute(builder: (_) => ChatDetailsScreen());


      default:
        return null;
    }
  }
}
