import 'package:final_flutter_task/core/constant/color.dart';
import 'package:final_flutter_task/core/constant/theme_servies.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BuildCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BuildCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      margin: const EdgeInsets.only(top: 10),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              ThemeService().changeThemeMode();
            },
            icon: Icon(
              ThemeService().isSaveDarkMode()
                  ? CupertinoIcons.sun_max_fill
                  : CupertinoIcons.moon_stars_fill,
                  color: ThemeService().isSaveDarkMode()? Colors.amber: kDarkColor,
            ),
          ),
          Text(
            "Home",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/notefication.svg",
                color: ThemeService().isSaveDarkMode()
                    ? Colors.grey[100]
                    : kDarkColor),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
