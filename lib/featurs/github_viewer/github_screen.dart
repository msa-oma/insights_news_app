import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:insights_news_app/featurs/github_viewer/githubmodel/githubmodel.dart';

import '../../core/utils/text_style.dart';
import 'gitcubit/git_cubit.dart';
import 'gitcubit/git_state.dart';
import 'tile_widget.dart';

class GitHubScreen extends StatelessWidget {
  const GitHubScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('GitHub Viewer', style: getBodyStyle()),
        ),
        body: BlocBuilder<GithubCubit, GitHubStates>(
          builder: (context, state) {
            if (state is GitHubErrorState) {
              return Text(state.error);
            } else if (state is GitHubSuccessState) {
              List<Githubmodel> repos = state.model;
              return ListView.separated(
                itemCount: repos.length,
                itemBuilder: (context, index) {
                  return GithubItem(
                    title: repos[index].name!,
                    name: repos[index].owner!.login!,
                    description: repos[index].description!,
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider();
                },
              );
            } else {
              return const CircularProgressIndicator();
            }
          },
        ));
  }
}
/*  ListView.separated(
          itemCount: 4,
          itemBuilder: (context, index) {
            GithubItem(
              githubModel: GitHubModel(
                  title: 'grit',
                  subtitle: "mojombo",
                  detailsTitle:
                      "**grit is no longer maintaned check out libgit2 ldv vjpwj  pvwj pw ep vwep vjwe pvekwp v pkowevw kvpa "),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider();
          },
        ) */
