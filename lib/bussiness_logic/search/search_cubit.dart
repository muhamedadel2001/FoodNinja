import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodninja/data/remote/response/search/search_response.dart';
import 'package:meta/meta.dart';

import '../../data/remote/request/search/search_request.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  static SearchCubit get(context) => BlocProvider.of<SearchCubit>(context);
  SearchCubit() : super(SearchInitial());
  SearchResponse searchResponse=SearchResponse();
  List<DataSearch>found=[];
  void getSearch(){
    emit(LoadingSearchState());
    SearchRequest().searchRequest().then((value) {
      searchResponse = value;
      emit(SuccessSearchState());
    }).catchError((err) {
      emit(ErrorSearchState());
    });
  }
  void searchWithKey(String keyWord){
    List<DataSearch>?results=[];


        final suggest=searchResponse.data.where((element){
          final apple=element.name.toLowerCase();
          final input=keyWord.toLowerCase();
          return apple.contains(input);
        }).toList();



       /* results!=searchResponse.data.where((element) =>
            element.name.toLowerCase().contains(keyWord.toLowerCase())
        );*/

        found=suggest;
        emit(FilterSearchState());





    }
    }




