import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant/color.dart';
import '../../../../core/data/model/product_model.dart';

class BuildTitle extends StatelessWidget {
  const BuildTitle({
    Key? key,
    required this.productModel,
    required this.size,
  }) : super(key: key);

  final ProductModel productModel;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                productModel.title,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: size.height / 40),
              ),
              const SizedBox(
                height: 3,
              ),
              Row(
                children: [
                  Text(
                    "₹${productModel.price}",
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontSize: 15,
                        ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Row(
                    children: [
                      const Icon(
                        CupertinoIcons.star_fill,
                        color: Colors.amber,
                        size: 20,
                      ),
                      Text(
                        "${productModel.stars}",
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              fontSize: 15,
                            ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "(${productModel.reviews} reviews)",
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            fontSize: 10, fontWeight: FontWeight.w300),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          CupertinoButton(
            padding: EdgeInsets.zero,
            child: const Icon(
              CupertinoIcons.heart,
              color: kWhite,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
