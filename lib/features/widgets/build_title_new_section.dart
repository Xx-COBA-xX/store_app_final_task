import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/constant/color.dart';

class BuildTitleNewSection extends StatelessWidget {
  const BuildTitleNewSection({
    Key? key,
    required this.title,
    this.seeAll = "",
    this.isIcon = false,
  }) : super(key: key);
  final String title;
  final String seeAll;
  final bool isIcon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(fontSize: MediaQuery.of(context).size.width / 18),
          ),
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {},
            child: isIcon
                ? const Icon(
                    CupertinoIcons.arrowtriangle_down_fill,
                    color: kWhite,
                  )
                : Text(
                    seeAll,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 14),
                  ),
          ),
        ],
      ),
    );
  }
}
