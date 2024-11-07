import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/views/onboarding%20pages/onboarding_page1.dart';
import 'package:notes_app/views/onboarding%20pages/onboarding_page2.dart';
import 'package:notes_app/views/onboarding%20pages/onboarding_page3.dart';
import '../widgets/smooth_indicator.dart';

class OnboardingView extends StatelessWidget {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _controller,
              children: [
                OnboardingPage1(),
                OnboardingPage2(),
                OnboardingPage3(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/home');
                  },
                  child: Text('Skip', style: TextStyle(color: Kcolor1)),
                ),
                SmoothIndicator(controller: _controller, count: 3),
                IconButton(
                  onPressed: () {
                    if (_controller.page == 2) {
                      Navigator.pushReplacementNamed(context, '/home');
                    } else {
                      _controller.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    }
                  },
                  icon: Icon(Icons.arrow_forward, color: Kcolor1),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
