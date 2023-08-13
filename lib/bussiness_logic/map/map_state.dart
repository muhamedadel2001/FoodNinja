part of 'map_cubit.dart';

@immutable
abstract class MapState {}

class MapInitial extends MapState {}
class MapGetCurrent extends MapState {}
class MapGetAddress extends MapState {}
