import 'package:flutter/material.dart';

import '../../core/constant/color.dart';
import '../../core/data/model/product_model.dart';

class BuildDotIndecetor extends StatelessWidget {
   BuildDotIndecetor({
    Key? key,
    required this.adsInfo,
    required this.currentAds,
  }) : super(key: key);
  final List<ProductModel> adsInfo;
  final int currentAds;
  
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(adsInfo.length, (index) {
        return AnimatedContainer(
          duration: const Duration(
            milliseconds: 200,
          ),
          margin: const EdgeInsets.only(right: 3),
          height: 6,
          width: currentAds == index ? 20 : 8,
          decoration: BoxDecoration(
              color: currentAds == index ? kPrimaryColor : Colors.grey[600],
              borderRadius: BorderRadius.circular(10)),
        );
      }),
    );
  }
}
