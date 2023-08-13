import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'orders_state.dart';

class OrdersCubit extends Cubit<OrdersState> {
  static OrdersCubit get(context) => BlocProvider.of<OrdersCubit>(context);

  OrdersCubit() : super(OrdersInitial());
  FirebaseFirestore fireStore = FirebaseFirestore.instance;
  int sum=0;
  List<Map> orders = [];

  void createDataBase() {
    getOrders();
  }

  void getOrders() async {
    emit(OrdersLoadingState());
    await fireStore.collection('orders').get().then((value) {
      orders.clear();
      for (QueryDocumentSnapshot<Map<String, dynamic>> element in value.docs) {
        orders.add(element.data());
      }
      emit(OrderssuccessGetState());
    });
  }

  void addOrder(
      {required String name, required int price, required String img, required int curValue}) async {
    int uniqId = DateTime
        .now()
        .millisecondsSinceEpoch;
    await fireStore.collection('orders').doc(uniqId.toString()).set({
      'id': uniqId,
      'name': name,
      'price': price,
      'img': img,
      'curValue': curValue,
      'sub':price*curValue,


    }).then((value) {
      emit(OrdersAddSuccess());
      getOrders();
    });
    sum+=price*curValue;
    print(sum);
    emit(OrdersClculateSum());
  }

  Future<void> deleteOrder({required int id}) async {
    /* await database
        .rawDelete('DELETE FROM contacts WHERE id=?', [id]).then((value) {
      getContacts(database);
      emit(AppDeleteContactState());
    });*/
    await fireStore
        .collection('orders')
        .doc(id.toString())
        .delete()
        .then((value) {
      emit(OrdersDeleteSuccess());
      getOrders();
    });
  }


  Future<void> updateOrder({required int curValue,
    required int id}) async {
    await fireStore.collection('orders').doc(id.toString()).update({
      'curValue': curValue,
      'id': id,
    }).then((value) {
      emit(OrdersUpdateItemSuccess());
      getOrders();
    });

  }
}
