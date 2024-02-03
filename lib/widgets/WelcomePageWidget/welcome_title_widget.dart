import 'package:flutter/material.dart';

import '../../config/tech_learn_text_styles.dart';

class WelcomeTitleWidget extends StatelessWidget {
  const WelcomeTitleWidget({
    super.key,
    required this.titleText,
    required this.imgUrl,
  });
  final String titleText;
  final String imgUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      //  color: Colors.green,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      height: 76.15,
      width: double.infinity,
      // color: Colors.blue,
      child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
        Text(
          titleText,
          style: TechLearnTextStyles.myanTextStyle(),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Image.asset(
            imgUrl, //"assets/image/glaxy.png",
            width: 32,
            height: 32,
          ),
        )
      ]),
    );
  }
}
