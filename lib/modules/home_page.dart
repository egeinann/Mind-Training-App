import 'package:flutter/material.dart';
import 'package:mind_training_app/utils/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DarkColors.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 25,
          children: [
            qwe(DarkColors.background2),
            qwe(DarkColors.focus),
            qwe(DarkColors.primary),
            Text(
              "data",
              style: TextStyle(color: DarkColors.textAndIcon, fontSize: 30,fontWeight: FontWeight.bold),
            ),
            Text(
              "data",
              style: TextStyle(color: DarkColors.textAndIcon2, fontSize: 30,fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget qwe(Color color) {
    return Container(
      height: 100,
      width: 200,

      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
