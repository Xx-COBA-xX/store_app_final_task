// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:final_flutter_task/features/screen/details/widgets/details_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:final_flutter_task/core/data/model/product_model.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.myProduct});
  final ProductModel myProduct;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: BuildDetailsBody(
        size: size,
        myProduct: myProduct,
      ),
    );
  }
}
