import 'package:final_flutter_task/features/screen/details/details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../../../../core/data/model/product_model.dart';
import '../../../../core/data/repo/search_product_info.dart';

// ignore: must_be_immutable
class BuildProductSection extends StatelessWidget {
  BuildProductSection({super.key});
  List<ProductModel> mySearchList = SearchInfo().searchInfoLit;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 11),
      child: MasonryGridView.builder(
        gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemCount: mySearchList.length,
        itemBuilder: (context, index) {
          return BuildSearcProductItems(
              mySearchList: mySearchList, index: index);
        },
      ),
    );
  }
}

class BuildSearcProductItems extends StatelessWidget {
  const BuildSearcProductItems(
      {super.key, required this.mySearchList, required this.index});

  final List<ProductModel> mySearchList;
  final int index;
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        Get.to(
          DetailsScreen(
            myProduct: mySearchList[index],
          ),
        );
      },
      child: Hero(
        tag: mySearchList[index].hero,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 5, top: 6),
              child: Image.asset(
                mySearchList[index].image,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    mySearchList[index].title,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: MediaQuery.of(context).size.width / 30,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    mySearchList[index].subTitle,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
