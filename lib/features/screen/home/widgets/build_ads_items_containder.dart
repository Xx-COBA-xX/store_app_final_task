import 'package:final_flutter_task/core/constant/color.dart';
import 'package:final_flutter_task/features/screen/details/details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/data/model/product_model.dart';
import '../../../widgets/custm_button.dart';

class AdsItemsContainer extends StatelessWidget {
  const AdsItemsContainer(
      {super.key,
      required this.size,
      required this.adsInfo,
      required this.index});
  final Size size;
  final List<ProductModel> adsInfo;
  final int index;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        Get.to(
            DetailsScreen(
              myProduct: adsInfo[index],
            ),
            transition: Transition.fadeIn);
      },
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            width: size.width * 0.93,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(adsInfo[index].image), fit: BoxFit.cover),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 35,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      adsInfo[index].title,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontSize: 24,color: kWhite),
                    ),
                    Text(
                      adsInfo[index].subTitle,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: kWhite
                          ),
                    ),
                  ],
                ),
                SizedBox(
                  width: size.width * 0.09,
                ),
                const CustomButton()
              ],
            ),
          )
        ],
      ),
    );
  }
}
