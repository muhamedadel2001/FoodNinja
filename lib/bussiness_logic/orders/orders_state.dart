part of 'orders_cubit.dart';

@immutable
abstract class OrdersState {}

class OrdersInitial extends OrdersState {}

class OrdersLoadingState extends OrdersState {}

class OrderssuccessGetState extends OrdersState {}

class OrdersAddSuccess extends OrdersState {}

class OrdersDeleteSuccess extends OrdersState {}

class OrdersDeleteItemSuccess extends OrdersState {}

class OrdersAddItemSuccess extends OrdersState {}

class OrdersUpdateItemSuccess extends OrdersState {}

class OrdersClculateSum extends OrdersState {}



