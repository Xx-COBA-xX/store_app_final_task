import 'package:final_flutter_task/core/data/model/categore.dart';
import 'package:final_flutter_task/features/screen/search/widgets/build_category_tapbar.dart';
import 'package:final_flutter_task/features/screen/search/widgets/build_product_section.dart';
import 'package:final_flutter_task/features/widgets/build_title_new_section.dart';
import 'package:final_flutter_task/features/widgets/search_bar.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            const SizedBox(height: 20,),
            const BuildTitleNewSection(title: "Search"),
            const BuildSearchBar(),
            const SizedBox(
              height: 5,
            ),
            const BuildTitleNewSection(title: "Categorise"),
            BuildTabBar(
              currentIndex: currentIndex,
              tabBar: category,
            ),
            Container(
              height: 500,
              child: BuildProductSection(),
            ),
          ],
        ),
      ),
    );
  }
}

