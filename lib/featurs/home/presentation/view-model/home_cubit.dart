import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/services/api_service.dart';
import 'home_state.dart';

class NewsCubit extends Cubit<NewsStates> {
  NewsCubit() : super(NewsInitState());

  // getByCategory
  getByCategory(String category) {
    emit(NewsByCategoryLoadingState());
    try {
      ApiServices.getNewsByCategory(category).then((value) {
        emit(NewsByCategorySuccessState(model: value!));
      });
    } catch (e) {
      emit(NewsByCategoryErrorState(error: e.toString()));
    }
  }

  // getBySearch
  getBySearch(String searchKey) {
    emit(NewsBySearchLoadingState());
    try {
      ApiServices.getNewsBySearch(searchKey).then((value) {
        emit(NewsBySearchSuccessState(model: value!));
      });
    } catch (e) {
      emit(NewsBySearchErrorState(error: e.toString()));
    }
  }
}
