import 'package:flutter/material.dart';

import '../config/tech_learn_text_styles.dart';

class CustomMainButtom extends StatelessWidget {
  const CustomMainButtom({
    super.key,
    required this.btnColor,
    required this.borderRadius,
    required this.textColor,
    required this.btnText,
    required this.leftIcon,
    required this.rightIcon,
    required this.voidCall,
    required this.leftIconSize,
    required this.rightIconSize,
  });

  final Color? btnColor;
  final double borderRadius;
  final Color? textColor;
  final String btnText;
  final IconData? leftIcon;
  final IconData? rightIcon;
  final VoidCallback voidCall;
  final double? leftIconSize;
  final double? rightIconSize;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, top: 24, right: 32, bottom: 24),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: btnColor,
          //border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: voidCall,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 3.65, top: 5.5, right: 5.0),
                    child: Icon(
                      leftIcon,
                      color: Colors.white,
                      size: leftIconSize,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 3.65, top: 5.5, right: 5.0),
                    child: Text(
                      btnText,
                      textAlign: TextAlign.center,
                      style: TechLearnTextStyles.buttonTextStyleTextStyle(),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 3.65, top: 5.5, right: 5.0),
                    child: Icon(
                      rightIcon,
                      color: Colors.white,
                      size: rightIconSize,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
