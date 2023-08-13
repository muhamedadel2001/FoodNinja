import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodninja/core/my_cache_keys.dart';
import 'package:foodninja/data/local/cashe/my_cache.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meta/meta.dart';

part 'map_state.dart';

class MapCubit extends Cubit<MapState> {
  static MapCubit get(context) => BlocProvider.of<MapCubit>(context);
  MapCubit() : super(MapInitial());
  late GoogleMapController controller;
   late CameraPosition initialCameraPosition=CameraPosition(target: LatLng(31.197729, 29.892540),zoom: 14);
  Set<Marker>markers={};
   String address='';
  Future<Position>determinationPosition()async{
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled=await Geolocator.isLocationServiceEnabled();
    if(!serviceEnabled){
      Future.error('Location services are disabled');
    }
    permission=await Geolocator.checkPermission();
    if(permission==LocationPermission.denied){
      permission=await Geolocator.requestPermission();
      if(permission==LocationPermission.denied){
        return Future.error('Location Permission are Denied');

      }
    }
    Position position=await Geolocator.getCurrentPosition();
    emit(MapGetCurrent());
    return position;
  }
  getAddress(lat,long)async{
    List<Placemark>place=await placemarkFromCoordinates(lat, long);
    address=place[0].street!+" "+place[0].country!;
    MyCache.setString(key: MyCacheKeys.address, value: address);
    emit(MapGetAddress());

  }



}
