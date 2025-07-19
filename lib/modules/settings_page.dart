import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mind_training_app/controllers/settings_controller.dart';
import 'package:mind_training_app/models/settings_model.dart';
import 'package:mind_training_app/utils/icons.dart';
import 'package:mind_training_app/utils/padding.dart';
import 'package:mind_training_app/widgets/button.dart';

class SettingsPage extends GetView<SettingsController> {
  const SettingsPage({super.key});
  @override
  Widget build(BuildContext context) {
    final settingsList = [
      SettingsModel(
        onTap: () {},
        leading: AppIcons.bell,
        title: "title",
        description: "description",
        action: Text("data"),
      ),
      SettingsModel(
        onTap: () {},
        leading: AppIcons.bell,
        title: "title",
        description: "description",
        action: Text("data"),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(5),
          child: AppButton(icon: AppIcons.left, onPressed: () => Get.back()),
        ),
      ),
      body: Padding(
        padding: context.paddingLarge,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: settingsList.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(vertical:5),
            child: Material(
              color: Get.theme.canvasColor,
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: settingsList[index].onTap,
                child: ListTile(
                  leading: Icon(
                    settingsList[index].leading,
                    color: Get.theme.iconTheme.color,
                  ),
                  title: Text(
                    settingsList[index].title,
                    style: Get.theme.textTheme.bodyLarge,
                  ),
                  subtitle: settingsList[index].description != null
                      ? Text(
                          settingsList[index].description!,
                          style: Get.theme.textTheme.bodySmall!.copyWith(
                            color: Colors.grey,
                          ),
                        )
                      : null,
                  trailing: settingsList[index].action,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
