import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           SvgPicture.asset(
            'assets/images/Taking notes-cuate.svg',
            height: 250,
          ), 
          SizedBox(height: 20),
          Text(
            'Access Anywhere',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Text(
              'Access your notes on the go, anytime, anywhere.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
          ),
        ],
      ),
    );
  }
}
