import 'package:flutter/material.dart';

// this widget adds a gap or sizedbox in the specified direction
class Gap extends StatelessWidget {
  final double h;
  final double w;
  const Gap({Key? key, this.h = 0, this.w = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: h, width: w);
  }
}
