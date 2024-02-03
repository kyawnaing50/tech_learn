import 'package:flutter/material.dart';

import '../../config/tech_learn_colors.dart';

class CustomIndex extends StatelessWidget {
  const CustomIndex({super.key, required this.indexNum});
  final int indexNum;
  @override
  Widget build(BuildContext context) {
    return indexNum == 1
        ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 24,
                height: 8,
                margin: const EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                  color: TechLearnColors.rectangleColor,
                  //border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              Container(
                width: 8,
                height: 8,
                margin: const EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                  color: TechLearnColors.dotColor,
                  //border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              Container(
                width: 8,
                height: 8,
                margin: const EdgeInsets.symmetric(horizontal: 2),
                decoration: BoxDecoration(
                  color: TechLearnColors.dotColor,
                  //border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ],
          )
        : indexNum == 2
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    decoration: BoxDecoration(
                      color: TechLearnColors.dotColor,
                      //border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  Container(
                    width: 24,
                    height: 8,
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    decoration: BoxDecoration(
                      color: TechLearnColors.rectangleColor,
                      //border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  Container(
                    width: 8,
                    height: 8,
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    decoration: BoxDecoration(
                      color: TechLearnColors.dotColor,
                      //border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    decoration: BoxDecoration(
                      color: TechLearnColors.dotColor,
                      //border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  Container(
                    width: 8,
                    height: 8,
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    decoration: BoxDecoration(
                      color: TechLearnColors.dotColor,
                      //border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  Container(
                    width: 24,
                    height: 8,
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    decoration: BoxDecoration(
                      color: TechLearnColors.rectangleColor,
                      //border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ],
              );
  }
}
