import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:insights_news_app/featurs/home/presentation/view/news_details_view.dart';

import '../../../../core/functions/routing.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/text_style.dart';
import '../../data/news_model/news_model.dart';
import '../view-model/home_cubit.dart';
import '../view-model/home_state.dart';

class NewsListBuilder extends StatelessWidget {
  const NewsListBuilder({
    super.key,
    required this.category,
  });
  final String category;
  @override
  Widget build(BuildContext context) {
    context.read<NewsCubit>().getByCategory(category);
    return BlocBuilder<NewsCubit, NewsStates>(
      builder: (context, state) {
        if (state is NewsByCategoryErrorState) {
          return Text(state.error);
        } else if (state is NewsByCategorySuccessState) {
          NewsModel news = state.model;
          return ListView.builder(
            itemCount: news.articles?.length,
            itemBuilder: (context, index) {
              var newsItem = news.articles?[index];
              return InkWell(
                onTap: () {
                  push(context, NewsDetailsView(model: newsItem!));
                },
                child: Container(
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
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
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
                ),
              );
            },
          );
        } else {
          return Center(
              child: CircularProgressIndicator(
            color: AppColors.greenLime,
          ));
        }
      },
    );
  }
}
