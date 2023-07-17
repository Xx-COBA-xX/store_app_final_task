// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:final_flutter_task/core/data/model/product_model.dart';
import 'package:flutter/material.dart';

import 'package:final_flutter_task/features/widgets/main_sziedbox.dart';

import '../../../../core/data/repo/hot_picks_repo.dart';
import '../../../../core/data/repo/recommended_repo.dart';
import '../../../widgets/build_title_new_section.dart';
import '../../../widgets/search_bar.dart';
import 'build_ads_section.dart';
import 'build_prodcut_section.dart';

class HomeBody extends StatelessWidget {
  HomeBody({super.key});
  final List<ProductModel> recommendedRepository =
      RecommendedRepository().recommendedList;
  final List<ProductModel> hotProducts = HotPicksRepository().HotPicks;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(
            height: 10,
          ),
          const BuildAdsSection(),
          MainSizedBox(size: size),
          const BuildTitleNewSection(
            title: "Discover",
          ),
          const BuildSearchBar(),
          MainSizedBox(size: size),
          const BuildTitleNewSection(
            title: "Hot picks",
            seeAll: "SeeAll",
          ),
          BuildProductListSection(
            size: size,
            myList: hotProducts,
          ),
          const BuildTitleNewSection(
            title: "Recommended",
            seeAll: "SeeAll",
          ),
          BuildProductListSection(
            size: size,
            myList: recommendedRepository,
          ),
        ],
      ),
    );
  }
}
