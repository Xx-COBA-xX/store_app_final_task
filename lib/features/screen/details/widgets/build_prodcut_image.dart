
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../core/constant/color.dart';
import '../../../../core/data/model/product_model.dart';

class BuildProductImage extends StatelessWidget {
  const BuildProductImage({
    super.key,
    required this.size,
    required this.myProduct,
  });

  final Size size;
  final ProductModel myProduct;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(
          tag: myProduct.hero,
          child: Container(
            height: size.height * 0.40,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    myProduct.image,
                  ),
                  fit: BoxFit.cover),
            ),
          ),
        ),
        Positioned(
          top: 30,
          left: 20,
          child: CupertinoButton(
            padding: EdgeInsets.zero,
            child: const Icon(
              Icons.arrow_back_ios,
              color: kWhite,
              size: 20,
            ),
            onPressed: () {
              Get.back();
            },
          ),
        ),
        Positioned(
          top: 30,
          right: 20,
          child: CupertinoButton(
            padding: EdgeInsets.zero,
            child: SvgPicture.asset(
              "assets/icons/cart.svg",
              color: kWhite,
            ),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
