// ignore_for_file: must_be_immutable

import 'package:final_flutter_task/core/constant/color.dart';
import 'package:flutter/material.dart';

class BuildTabBar extends StatefulWidget {
  BuildTabBar({
    super.key,
    required this.tabBar,
    required this.currentIndex,
  });

  final List<String> tabBar;
  int currentIndex;

  @override
  State<BuildTabBar> createState() => _BuildTabBarState();
}

class _BuildTabBarState extends State<BuildTabBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        height: MediaQuery.of(context).size.height * 0.054,
        child: ListView.builder(
          itemCount: widget.tabBar.length,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return _buildTapBarItem(
              onTap: () {
                setState(() {
                  widget.currentIndex = index;
                });
              },
              title: widget.tabBar[index],
              index: index,
            );
          },
        ),
      ),
    );
  }

  GestureDetector _buildTapBarItem({
    required String title,
    required void Function()? onTap,
    required int index,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeIn,
        margin: const EdgeInsets.only(left: 16),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: widget.currentIndex == index ? kPrimaryColor : kWhite),
        child: Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.w400,
                  fontSize: MediaQuery.of(context).size.height / 50,
                  color: widget.currentIndex == index ? kWhite : kPrimaryColor,
                ),
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first

// class BuildTapBarBookItem extends StatelessWidget {
//   const BuildTapBarBookItem({
//     Key? key,
//     required this.index,
//     this.onTap,
//   }) : super(key: key);
//   final int index;
//   final void Function()? onTap;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(8),
//         ),
//         margin: EdgeInsets.only(
//             left: index == 0 ? 16 : 8, right: index == 4 ? 16 : 0),
//         width: MediaQuery.of(context).size.width * 0.3,
//         child: Column(
//           children: [
//             Expanded(
//               flex: 4,
//               child: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(8),
//                   image: const DecorationImage(
//                       image: AssetImage(
//                         "assets/images/water_and_ice.png",
//                       ),
//                       fit: BoxFit.cover),
//                 ),
//               ),
//             ),
//             Expanded(
//               flex: 2,
//               child: Container(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       "Haider",
//                       style: Theme.of(context).textTheme.titleSmall!.copyWith(
//                           fontSize: MediaQuery.of(context).size.height / 60,
//                           fontWeight: FontWeight.w300),
//                     ),
//                     Text(
//                       "Water and Ice",
//                       overflow: TextOverflow.ellipsis,
//                       style: Theme.of(context).textTheme.titleMedium!.copyWith(
//                             fontSize: MediaQuery.of(context).size.height / 50,
//                           ),
//                     ),
//                     Text(
//                       "\$33",
//                       overflow: TextOverflow.ellipsis,
//                       style: Theme.of(context).textTheme.titleMedium!.copyWith(
//                           fontSize: MediaQuery.of(context).size.height / 43,
//                           fontWeight: FontWeight.w600),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
