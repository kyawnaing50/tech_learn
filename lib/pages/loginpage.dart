import 'package:flutter/material.dart';

import '../config/tech_learn_colors.dart';
import '../config/tech_learn_text_styles.dart';
import '../widgets/tech_learn_custom_button_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            //color: Colors.amber,
            height: 460,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 105,
                  height: 145,
                ),
                Text(
                  textAlign: TextAlign.start,
                  "Tech-Learn",
                  style: TechLearnTextStyles.headingTextStyle(),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  textAlign: TextAlign.start,
                  "Learn with technology",
                  style: TechLearnTextStyles.smallTextStyle(),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 232,
            // color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomMainButtom(
                    btnColor: TechLearnColors.mainButtonColor,
                    borderRadius: 30,
                    textColor: Colors.white,
                    btnText: "Continue with Phone Number",
                    leftIcon: Icons.phone,
                    rightIcon: null,
                    voidCall: () {},
                    leftIconSize: 18,
                    rightIconSize: null,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomMainButtom(
                    btnColor: TechLearnColors.googleButtonColor,
                    borderRadius: 30,
                    textColor: const Color(0xFF4D4D4D),
                    btnText: "Continue with Google",
                    leftIcon: Icons.g_mobiledata,
                    rightIcon: null,
                    voidCall: () {},
                    leftIconSize: 24,
                    rightIconSize: null,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
