import 'package:flutter/material.dart';

import '../../../../core/data/model/product_model.dart';
import 'build_product_items_contenier.dart';

class BuildProductListSection extends StatelessWidget {
  const BuildProductListSection({super.key, required this.size, required this.myList});
  final Size size;
  final List<ProductModel> myList ;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: size.height / 63, bottom: 5),
      height: size.height * 0.25,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: myList.length,
        itemBuilder: (context, index) {
          return HotProductItemsContainer(
            index: index,
            myList: myList,
            size: size,
          );
        },
      ),
    );
  }
}
