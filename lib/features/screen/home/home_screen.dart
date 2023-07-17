import 'dart:ui';

import 'package:final_flutter_task/features/screen/cart/cart_screen.dart';
import 'package:final_flutter_task/features/screen/person/perosn_screen.dart';
import 'package:final_flutter_task/features/screen/search/search_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/constant/color.dart';
import '../../../core/data/repo/bottom_navbar_info.dart';
import 'widgets/build_custom_app_bar.dart';
import 'widgets/build_home_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> myScreen = [
    HomeBody(),
    SearchScreen(),
    const CartScreen(),
    const PersonScreen()
  ];
  int currentScreen = 0;
  final List<String> myIcons = BottomNavBarInfo().bottomNavBarIcons;

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: currentScreen == 0 ? const BuildCustomAppBar() : null,
        body: myScreen[currentScreen],
        bottomNavigationBar: ClipRRect(
          child: Container(
            width: double.infinity,
            height: 60,
            color: Colors.transparent,
            //we use Stack(); because we want the effects be on top of each other,
            //  just like layer in photoshop.
            child: Stack(
              children: [
                //blur effect ==> the third layer of stack
                BackdropFilter(
                  filter: ImageFilter.blur(
                    //sigmaX is the Horizontal blur
                    sigmaX: 30.0,
                    //sigmaY is the Vertical blur
                    sigmaY: 30.0,
                  ),
                  //we use this container to scale up the blur effect to fit its
                  //  parent, without this container the blur effect doesn't appear.
                  child: Container(),
                ),
                //gradient effect ==> the second layer of stack
                Container(
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: Colors.white.withOpacity(0.00013)),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          //begin color
                          Colors.white.withOpacity(0.0001),
                          //end color
                          Colors.white.withOpacity(0.0001),
                        ]),
                  ),
                ),
                //child ==> the first/top layer of stack
                Center(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: List.generate(myIcons.length, (index) {
                        return CupertinoButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            setState(() {
                              currentIndex = index;
                              currentScreen = currentIndex;
                            });
                          },
                          child: SvgPicture.asset(
                            myIcons[index],
                            color: currentIndex == index
                                ? kPrimaryColor
                                :  Colors.grey[500]
                                    
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// AppBar(
//         title: const Text("HomeScreen"),
//         actions: [
//           IconButton(
//             onPressed: () {
//               
//             },
//             icon: const Icon(
//               CupertinoIcons.moon_stars_fill,
//             ),
//           ),
//         ],
//       ),