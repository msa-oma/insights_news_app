import '../githubmodel/githubmodel.dart';

class GitHubStates {}

class GitHubInitState extends GitHubStates {}

class GitHubLoadingState extends GitHubStates {}

class GitHubSuccessState extends GitHubStates {
  final List<Githubmodel> model;

  GitHubSuccessState({required this.model});
}

class GitHubErrorState extends GitHubStates {
  final String error;
  GitHubErrorState({required this.error});
}
