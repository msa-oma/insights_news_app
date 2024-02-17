import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/text_style.dart';
import '../home/presentation/view-model/home_cubit.dart';
import 'widgets/news_search_list_builder.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Find Your News',
            style: getTitleStyle(color: AppColors.whiteRegular, fontSize: 17),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // search bar
              TextFormField(
                style: getBodyStyle(color: AppColors.whiteRegular),
                onChanged: (value) {
                  context.read<NewsCubit>().getBySearch(value);
                },
                decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    hintText: 'Search for news'),
              ),
              // search items
              const Gap(20),

              const SearchListBuilder()
            ],
          ),
        ));
  }
}
