import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/constant/color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        height: 50,
        child: Center(
            child: Text(
          "Buy Now",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: kWhite
          ),
        )),
      ),
      onPressed: () {},
    );
  }
}
