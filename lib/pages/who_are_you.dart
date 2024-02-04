import 'package:flutter/material.dart';

import '../config/tech_learn_colors.dart';
import '../config/tech_learn_text_styles.dart';
import '../widgets/tech_learn_choose_widget.dart';

class WhoareUPage extends StatelessWidget {
  const WhoareUPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 64,
              ),
              Image.asset(
                "assets/images/whoeu.png",
                fit: BoxFit.fitHeight,
                height: 250,
                width: 250,
              ),
              SizedBox(
                // height: 116, //116,
                width: double.infinity,
                //color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      textAlign: TextAlign.start,
                      "Who are you",
                      style: TechLearnTextStyles.headingTextStyle(),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      textAlign: TextAlign.start,
                      "Please choose your user type.",
                      style: TechLearnTextStyles.smallTextStyle(),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 272,
                        //color: Colors.grey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ChooseCustomButtom(
                              buttonColor:
                                  TechLearnColors.choosePrincipleButtonColor,
                              text: "Principle",
                              iconColor: TechLearnColors.choosePrincipleColor,
                              textColor: TechLearnColors.choosePrincipleColor,
                              iconImage: "assets/image/Solid.png",
                              callback: () {},
                            ),
                            ChooseCustomButtom(
                              buttonColor:
                                  TechLearnColors.chooseTeacherButtonColor,
                              text: "Teacher",
                              iconColor: TechLearnColors.chooseTeacherColor,
                              textColor: TechLearnColors.chooseTeacherColor,
                              iconImage: "assets/image/book.png",
                              callback: () {},
                            ),
                            ChooseCustomButtom(
                              buttonColor:
                                  TechLearnColors.chooseStudentButtonColor,
                              text: "Student",
                              iconColor: TechLearnColors.chooseStudentColor,
                              textColor: TechLearnColors.chooseStudentColor,
                              iconImage: "assets/image/backpack.png",
                              callback: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
