import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodninja/bussiness_logic/auth/auth_cubit.dart';
import 'package:foodninja/bussiness_logic/home/home_cubit.dart';
import 'package:foodninja/bussiness_logic/map/map_cubit.dart';
import 'package:foodninja/bussiness_logic/orders/orders_cubit.dart';
import 'package:foodninja/bussiness_logic/search/search_cubit.dart';
import 'package:foodninja/presentation/router/app_router.dart';
import 'package:sizer/sizer.dart';

import 'core/my_bloc_observer.dart';
import 'data/local/cashe/my_cache.dart';
import 'data/remote/data_providers/my_dio.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await MyCache.initCache();
  Bloc.observer = MyBlocObserver();
  await MyDio.dioInit();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AppRouter router = AppRouter();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder:
        (BuildContext context, Orientation orientation, DeviceType deviceType) {
      return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => HomeCubit()),
          BlocProvider(create: (context) => MapCubit()),
          BlocProvider(create: (context) => SearchCubit()),
          BlocProvider(create: (context) => AuthCubit()),
          BlocProvider(create: (context) => OrdersCubit()..createDataBase()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Food Ninja',
          theme: ThemeData(
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            primarySwatch: Colors.blue,
          ),
          onGenerateRoute: router.onGenerateRoute,
        ),
      );
    });
  }
}
