import 'package:final_flutter_task/core/constant/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildSearchBar extends StatelessWidget {
  const BuildSearchBar({super.key, this.onTap});
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.symmetric(horizontal: 8),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.circular(8),
      ),
      height: MediaQuery.of(context).size.height * 0.065,
      child: Center(
        child: TextField(
          onTap: onTap,
          decoration: const InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              CupertinoIcons.search,
              size: 22,
              color: Colors.grey,
            ),
            hintText: "Search..",
            hintStyle: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w400,
            ),
          ),
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: MediaQuery.of(context).size.height / 45,
                fontWeight: FontWeight.w600,
                color: kDarkColor
              ),
        ),
      ),
    );
  }
}
