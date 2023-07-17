import 'package:flutter/material.dart';

class MainSizedBox extends StatelessWidget {
  const MainSizedBox({super.key, required this.size});
    final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height/33,
    );
  }
}