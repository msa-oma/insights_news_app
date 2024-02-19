import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:insights_news_app/featurs/github_viewer/gitcubit/git_state.dart';

import '../api_serv.dart';

class GithubCubit extends Cubit<GitHubStates> {
  GithubCubit() : super(GitHubInitState());

  getGithubRepos() {
    emit(GitHubLoadingState());
    try {
      ApiService.getGitHubRepos().then((value) {
        emit(GitHubSuccessState(model: value!));
      });
    } catch (e) {
      emit(GitHubErrorState(error: e.toString()));
    }
  }
}
