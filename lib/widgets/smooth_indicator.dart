import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmoothIndicator extends StatelessWidget {
  final PageController controller;
  final int count;

  SmoothIndicator({required this.controller, required this.count});

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: count,
      effect: ExpandingDotsEffect(
        activeDotColor: Kcolor1,
        dotColor: Color.fromARGB(255, 221, 209, 228),
        dotHeight: 8.0,
        dotWidth: 8.0,
      ),
    );
  }
}
