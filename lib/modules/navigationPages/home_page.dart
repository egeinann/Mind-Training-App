import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mind_training_app/utils/icons.dart';
import 'package:mind_training_app/utils/images.dart';
import 'package:mind_training_app/utils/padding.dart';
import 'package:mind_training_app/widgets/button.dart';
import 'package:mind_training_app/widgets/blurContainer.dart';
import 'package:mind_training_app/widgets/container.dart';
import 'package:mind_training_app/widgets/linechart.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.size.width,
      height: Get.size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.background_1),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: context.paddingMedium,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text("W E L C O M E, ", style: Get.theme.textTheme.bodySmall),
                  Text("ege", style: Theme.of(context).textTheme.bodyLarge),
                ],
              ),
              SizedBox(height: 10),
            
              customBlurContainer(
                backgroundColor: Get.theme.cardColor,
                child: exampleLineChart(),
              ),
              SizedBox(height: 50),
              exercises(),
              SizedBox(height: 300),
            ],
          ),
        ),
      ),
    );
  }

  Column exercises() {
    return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Exercises",
                  style: Get.theme.textTheme.labelSmall,
                ),
                SingleChildScrollView(
                  padding: EdgeInsets.only(bottom: 30),
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      CustomContainer(
                        title: "Math",
                        image: AppIllustrations.bulb,
                        backgroundColor: Colors.redAccent,
                        shadowColor: Colors.red,
                      ),
                      CustomContainer(
                        title: "bar",
                        image: AppIllustrations.piechart,
                        backgroundColor: Colors.blue,
                        shadowColor: Colors.blueAccent,
                      ),
                      CustomContainer(
                        title: "Puzzle",
                        image: AppIllustrations.puzzle,
                        backgroundColor: Colors.orangeAccent,
                        shadowColor: Colors.orange,
                      ),
                      CustomContainer(
                        title: "Questions",
                        image: AppIllustrations.question,
                        backgroundColor: Colors.purpleAccent,
                        shadowColor: Colors.purple,
                      ),
                    ],
                  ),
                ),
              ],
            );
  }
}
