import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodninja/bussiness_logic/map/map_cubit.dart';
import 'package:foodninja/core/screens.dart';
import 'package:foodninja/presentation/screens/auth/map_auth_screen.dart';
import 'package:foodninja/presentation/style/colors.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sizer/sizer.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapCubit, MapState>(
      builder: (context, state) {
        return Scaffold(
          body: Stack(alignment: Alignment.bottomCenter, children: [
            GoogleMap(
              initialCameraPosition:
                  MapCubit.get(context).initialCameraPosition,
              markers: MapCubit.get(context).markers,
              zoomControlsEnabled: false,
              mapType: MapType.normal,
              onMapCreated: (GoogleMapController controller) {
                MapCubit.get(context).controller = controller;
              },
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 5.h, left: 5.w, right: 5.w),
              child: Material(
                borderRadius: BorderRadius.circular(20.sp),
                color: Colors.white,
                elevation: 5,
                child: Container(
                  height: 20.h,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 2.h, left: 1.w),
                        child: Text(
                          'Your Location',
                          style: TextStyle(color: Colors.grey,fontSize: 13.sp),

                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      BlocBuilder<MapCubit, MapState>(

                        builder: (context, state) {
                          if(state is MapGetAddress){
                          return Row(
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(left: 2.w),
                                child: Container(
                                    decoration:BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.yellow

                          ),
                                    child: Icon(Icons.location_pin,color: Colors.orange,size: 25.sp,)),
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Flexible(child: Text(MapCubit.get(context).address,style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),)),
                            ],
                          );}
                          else{
                            return Container();
                          }
                        },
                      ),
                      BlocBuilder<MapCubit, MapState>(
                        builder: (context, state) {
                          return Padding(
                            padding: EdgeInsets.only(top: 3.h),
                            child: InkWell(
                              onTap: () async {
                                if(state is MapGetAddress){
                                  Navigator.pushNamed(context, mapAuthScreen);
                                }
                                Position position = await MapCubit.get(context)
                                    .determinationPosition();
                                await MapCubit.get(context).getAddress(
                                    position.latitude, position.longitude);

                                await MapCubit.get(context).controller.animateCamera(
                                        CameraUpdate.newCameraPosition(
                                      CameraPosition(
                                          target: LatLng(position.latitude,
                                              position.longitude),
                                          zoom: 14),
                                    ));
                                MapCubit.get(context).markers.clear();
                                await MapCubit.get(context).markers.add(Marker(
                                    markerId: MarkerId('currentLocation '),
                                    position: LatLng(position.latitude,
                                        position.longitude)));

                              },
                              child: Container(
                                height: 6.h,
                                width: double.infinity,
                                margin: EdgeInsets.symmetric(horizontal: 8.w),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.sp),
                                    color: firstLinear),
                                child: Center(
                                    child: Visibility(
                                      visible: state is MapGetAddress,
                                      child: Text(
                                  'Set Location',
                                  style: TextStyle(
                                        fontSize: 14.sp, color: Colors.white),
                                ),
                                      replacement: Text(
                                        'Get Location',
                                        style: TextStyle(
                                            fontSize: 14.sp, color: Colors.white),
                                      ) ,
                                    )),
                              ),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            )
          ]),
        );
      },
    );
  }
}
