import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:insights_news_app/core/services/api_service.dart';

import 'source_state.dart';

class SourceCubit extends Cubit<SourceStates> {
  SourceCubit() : super(SourceInitState());

   getBySource( ) {
    emit(SourceLoadingState());
    try {
      ApiServices.getNewsBySource().then((value) {
        emit(SourceSuccessState(model: value!));
      });
    } catch (e) {
      emit(SourceErrorState(error: e.toString()));
    }
  }
}
