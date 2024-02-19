import '../sources_model/sources_model.dart';

class SourceStates {}

class SourceInitState extends SourceStates {}

class SourceLoadingState extends SourceStates {}

class SourceSuccessState extends SourceStates {
  final SourceModel model;
  SourceSuccessState({required this.model});
}

class SourceErrorState extends SourceStates {
  final String error;
  SourceErrorState({required this.error});
}
