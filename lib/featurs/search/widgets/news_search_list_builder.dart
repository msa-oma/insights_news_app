import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/utils/text_style.dart';
import '../../home/data/news_model/news_model.dart';
import '../../home/presentation/view-model/home_cubit.dart';
import '../../home/presentation/view-model/home_state.dart';

class SearchListBuilder extends StatelessWidget {
  const SearchListBuilder({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsStates>(
      builder: (context, state) {
        if (state is NewsBySearchErrorState) {
          return Text(state.error);
        } else if (state is NewsBySearchSuccessState) {
          NewsModel news = state.model;
          return Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Total Results : ${news.articles?.length}',
                      style: getTitleStyle(
                          color: AppColors.whiteRegular, fontSize: 17),
                    ),
                  ],
                ),
                const Gap(15),
                Expanded(
                  child: ListView.builder(
                    itemCount: news.articles?.length,
                    itemBuilder: (context, index) {
                      var newsItem = news.articles?[index];
                      return Container(
                        margin: const EdgeInsets.only(bottom: 15),
                        decoration: BoxDecoration(
                            color: AppColors.greysiBg,
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.network(
                                newsItem?.urlToImage ?? '',
                                width: 150,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return const SizedBox(
                                      width: 150, child: Icon(Icons.error));
                                },
                              ),
                            ),
                            const Gap(10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    newsItem?.title ?? '',
                                    style: getBodyStyle(fontSize: 14),
                                  ),
                                  const Gap(10),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.menu,
                                        size: 14,
                                        color: AppColors.whiteRegular,
                                      ),
                                      const Gap(7),
                                      Text(
                                        'Read',
                                        style: getSmallStyle(
                                            color: AppColors.whiteRegular),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        } else if (state is NewsBySearchLoadingState) {
          return Center(
              child: CircularProgressIndicator(
            color: AppColors.greenLime,
          ));
        } else {
          return Center(
              child: Text(
            '...',
            style: getTitleStyle(),
          ));
        }
      },
    );
  }
}
