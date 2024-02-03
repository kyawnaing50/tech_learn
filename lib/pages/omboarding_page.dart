import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../config/tech_learn_colors.dart';
import '../config/tech_learn_text_styles.dart';
import '../widgets/onboarding_widget.dart';
import '../widgets/tech_learn_custom_button_widget.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final _controller = PageController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(),
        //backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                  height: 76,
                  // color: Colors.blue,
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Text(
                      "Tech-Learn",
                      style: TechLearnTextStyles.smallTextStyle(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset(
                        "assets/images/ic_logo.png",
                        width: 32,
                        height: 32,
                      ),
                    )
                  ]),
                ),
                Stack(
                  children: [
                    SizedBox(
                      height: 500,
                      child: PageView(
                        controller: _controller,
                        onPageChanged: (value) => {setState(() => {})},
                        children: const [
                          OnboardinWidget(
                            imageUrl: "assets/images/welcome.png",
                            mainText: "Welcome",
                            descriptionText:
                                "Embark on a journey of knowledge and discovery with us. Let's make learning exciting together.",
                            btnText: "Next",
                          ),
                          OnboardinWidget(
                            imageUrl: "assets/images/interacting.png",
                            mainText: "Interactive Learning",
                            descriptionText:
                                "Engage with quizzes, games, and interactive lessons.",
                            btnText: "Next",
                          ),
                          OnboardinWidget(
                            imageUrl: "assets/images/online.png",
                            mainText: "Online Learning",
                            descriptionText:
                                "Learn with Technology, you can learn from everywhere, every time.",
                            btnText: "Get Start",
                          ),
                        ],
                      ),
                    ),
                    //dot indicate
                    Positioned(
                      top: 340,
                      left: 180,
                      child: SmoothPageIndicator(
                        controller: _controller,
                        count: 3,
                        effect: const ExpandingDotsEffect(
                          activeDotColor: TechLearnColors.rectangleColor,
                          dotColor: TechLearnColors.dotColor,
                          dotHeight: 8,
                          dotWidth: 8,
                          radius: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            CustomMainButtom(
              btnColor: TechLearnColors.mainButtonColor,
              borderRadius: 30,
              textColor: Colors.green,
              btnText: "Next",
              leftIcon: null,
              rightIcon: Icons.arrow_forward,
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
