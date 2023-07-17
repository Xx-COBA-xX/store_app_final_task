import 'package:final_flutter_task/features/widgets/build_title_new_section.dart';
import 'package:final_flutter_task/features/widgets/custm_button.dart';
import 'package:final_flutter_task/features/widgets/main_sziedbox.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/color.dart';
import '../../../../core/data/model/product_model.dart';
import 'build_prodcut_image.dart';
import 'build_product_title.dart';

class BuildDetailsBody extends StatelessWidget {
  const BuildDetailsBody({
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
        BuildProductImage(
          size: size,
          myProduct: myProduct,
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.only(
              top: 25,
            ),
            height: size.height * 0.63,
            decoration: const BoxDecoration(
              color: kDarkColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(28),
                topRight: Radius.circular(28),
              ),
            ),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  BuildTitle(
                    productModel: myProduct,
                    size: size,
                  ),
                  MainSizedBox(size: size),
                  const BuildTitleNewSection(
                    title: "Details",
                    isIcon: true,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Divider(
                      color: kWhite,
                      height: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16, top: 5),
                    child: Text(
                      myProduct.details,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontSize: size.height / 55,
                            fontWeight: FontWeight.w300,
                          ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  MainSizedBox(size: size),
                  const BuildTitleNewSection(
                    title: "Description",
                    isIcon: true,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Divider(
                      color: kWhite,
                      height: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16, top: 5),
                    child: Text(
                      myProduct.dscription,
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontSize: size.height / 55,
                            fontWeight: FontWeight.w300,
                          ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        const Positioned(
          bottom: 5,
          right: 0,
          left: 0,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: CustomButton(),
          ),
        ),
      ],
    );
  }
}
