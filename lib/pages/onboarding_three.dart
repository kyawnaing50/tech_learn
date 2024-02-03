import 'package:flutter/material.dart';
import '../config/tech_learn_colors.dart';
import '../config/tech_learn_text_styles.dart';
import '../widgets/WelcomePageWidget/welcome_hero_widget.dart';
import '../widgets/WelcomePageWidget/welcome_title_widget.dart';
import '../widgets/tech_learn_custom_button_widget.dart';

class OnboardingThree extends StatelessWidget {
  const OnboardingThree({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const WelcomeTitleWidget(
                  titleText: "Tech-Learn",
                  imgUrl: "assets/images/ic_logo.png",
                ),
                const SizedBox(
                  height: 8,
                ),
                WelcomeHeroWidget(
                  imgUrl: "assets/images/welcome.png",
                  textTitle: "Online Learning",
                  description: TechLearnTextStyles.onlineLearingText,
                  detectPage: 1,
                ),
              ],
            ),
            const SizedBox(height: 34),
            CustomMainButtom(
              btnColor: TechLearnColors.mainButtonColor,
              borderRadius: 30,
              textColor: Colors.green,
              btnText: "Get Started",
              leftIcon: null,
              rightIcon: null, //Icons.arrow_forward,
              voidCall: () {},
              leftIconSize: 18,
              rightIconSize: null,
            ),
          ],
        ),
      ),
    );
  }
}
