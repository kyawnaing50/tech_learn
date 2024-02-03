import 'package:flutter/material.dart';

import '../../config/tech_learn_text_styles.dart';
import 'custom_index_welcome.dart';

class WelcomeHeroWidget extends StatelessWidget {
  const WelcomeHeroWidget({
    super.key,
    required this.textTitle,
    required this.imgUrl,
    required this.description,
    required this.detectPage,
  });

  final String imgUrl;
  final String textTitle;
  final String description;
  final int detectPage;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
      width: double.infinity,
      height: 502,
      //  color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            imgUrl, //"assets/image/welcome.png",
            fit: BoxFit.fitHeight,
            height: 250,
            width: 250,
          ),
          const SizedBox(
            height: 8,
          ),
          CustomIndex(
            indexNum: detectPage,
          ),
          const SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 116, //116,
            width: 342,
            //color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  textTitle, //"Online Learning",
                  style: TechLearnTextStyles.headingTextStyle(),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  textAlign: TextAlign.center,
                  description, // "Learn with Technology, you can learn from everywhere, every time.",
                  style: TechLearnTextStyles.smallTextStyle(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
