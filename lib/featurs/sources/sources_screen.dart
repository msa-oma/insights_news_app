import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:insights_news_app/featurs/sources/sources_model/source.dart';
import 'package:insights_news_app/featurs/sources/view_model/source_cubit.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/text_style.dart';
import 'sources_model/sources_model.dart';
import 'view_model/source_state.dart';

class SourceScreen extends StatefulWidget {
  const SourceScreen({super.key});

  @override
  State<SourceScreen> createState() => _SourceScreenState();
}

class _SourceScreenState extends State<SourceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Explore Your Source'),
      // ),
      body: Padding(
          padding: const EdgeInsets.all(15),
          child: BlocProvider(
              create: (context) => SourceCubit()..getBySource(),
              child: BlocBuilder<SourceCubit, SourceStates>(
                builder: (context, state) {
                  if (state is SourceErrorState) {
                    return const Center(
                        child: Text("Oops,some thing got wrong "));
                  } else if (state is SourceSuccessState) {
                    SourceModel sourceModel = state.model;
                    List<Source> sources = sourceModel.sources!;
                    return GridView.builder(
                      itemCount: sources.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisExtent: 200,
                              // childAspectRatio: 1,
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 10,
                              crossAxisCount: 2),
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            // Navigator.of(context).push(MaterialPageRoute(
                            //   builder: (context) => const SourceDetailsView(source: 'cnn'),
                            // ));
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            decoration: BoxDecoration(
                                color: AppColors.greysiBg,
                                borderRadius: BorderRadius.circular(15)),
                            child: Align(
                                child: Text(
                              sources[index].name!,
                              style: getTitleStyle(),
                            )),
                          ),
                        );
                      },
                    );
                  } else {
                    return Center(
                      child: Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: LinearProgressIndicator(
                          color: AppColors.greenLime,
                        ),
                      ),
                    );
                  }
                },
              ))),
    );
  }
}
