import 'package:flutter/material.dart';

import '../config/tech_learn_text_styles.dart';

class ChooseCustomButtom extends StatelessWidget {
  const ChooseCustomButtom({
    super.key,
    required this.buttonColor,
    required this.text,
    required this.iconColor,
    required this.textColor,
    required this.callback,
    required this.iconImage,
  });
  final Color? buttonColor;
  final String? text;
  final Color? textColor;
  final Color? iconColor;
  final VoidCallback? callback;
  final String? iconImage;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(200),
                  ),
                  child: ClipRRect(
                    child: Image.asset(
                      iconImage!,
                      // fit: BoxFit.cover,
                      height: 22,
                      width: 18.82,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  text!,
                  style: TechLearnTextStyles.smallTextStyle(color: textColor),
                ),
              ],
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              size: 24,
              color: iconColor,
            )
          ],
        ),
      ),
    );
  }
}
