// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

import '../../../../core/data/model/product_model.dart';
import '../../../../core/data/repo/ads_section_repo.dart';
import '../../../widgets/dot_indecator.dart';
import 'build_ads_items_containder.dart';

class BuildAdsSection extends StatefulWidget {
  const BuildAdsSection({super.key});

  @override
  State<BuildAdsSection> createState() => _BuildAdsSectionState();
}

class _BuildAdsSectionState extends State<BuildAdsSection> {
  final List<ProductModel> adsInfo = AdsRepository().adsInfo;

  int currentAds = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: size.height * 0.26,
          child: PageView.builder(
            onPageChanged: (value) {
              setState(() {
                currentAds = value;
              });
            },
            itemCount: adsInfo.length,
            itemBuilder: (context, index) {
              return AdsItemsContainer(
                adsInfo: adsInfo,
                size: size,
                index: index,
              );
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        BuildDotIndecetor(
          currentAds: currentAds,
          adsInfo: adsInfo,
        )
      ],
    );
  }
}


