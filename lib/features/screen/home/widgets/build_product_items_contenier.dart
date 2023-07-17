import 'package:final_flutter_task/features/screen/details/details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/data/model/product_model.dart';

class HotProductItemsContainer extends StatelessWidget {
  const HotProductItemsContainer(
      {super.key,
      required this.size,
      required this.myList,
      required this.index});
  final Size size;
  final List<ProductModel> myList;
  final int index;
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        Get.to( DetailsScreen(
          myProduct: myList[index],
        ), transition: Transition.fadeIn);
      },
      child: Hero(
        tag: myList[index].hero,
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: size.height * 0.18,
                width: size.width * 0.65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage(
                        myList[index].image,
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                myList[index].title,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: size.height / 50, fontWeight: FontWeight.w400),
              ),
              Text(
                myList[index].subTitle,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
