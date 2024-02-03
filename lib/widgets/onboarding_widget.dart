import 'package:flutter/material.dart';

import '../config/tech_learn_text_styles.dart';

class OnboardinWidget extends StatelessWidget {
  const OnboardinWidget({
    super.key,
    required this.imageUrl,
    required this.mainText,
    required this.descriptionText,
    required this.btnText,
  });
  final String imageUrl;
  final String mainText;
  final String descriptionText;
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 11),
      height: 478,
      width: 390,
      // color: Colors.amber,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 31.16, left: 16.62),
            child: Image.asset(
              imageUrl,
              fit: BoxFit.fitHeight,
              height: 250,
              width: 250,
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.all(6),
            child: Text(
              textAlign: TextAlign.center,
              mainText,
              style: TechLearnTextStyles.headingTextStyle(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text(
              textAlign: TextAlign.center,
              descriptionText,
              style: TechLearnTextStyles.smallTextStyle(),
            ),
          ),
        ],
      ),
    );
  }
}
