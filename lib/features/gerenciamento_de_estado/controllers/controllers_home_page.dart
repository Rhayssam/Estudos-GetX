import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/core/widgets/custom_elevated_button.dart';

class ControllersHomePage extends StatelessWidget {
  const ControllersHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: '7 - Controllers Home'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomElevatedButton(
              texto: 'Controller GetX',
              onPressed: () {
                Get.toNamed(
                  '/estado_home_page/controllers/getx_controller_example',
                );
              },
            ),
            CustomElevatedButton(
              texto: 'Full Life Cycle',
              onPressed: () {
                Get.toNamed(
                  '/estado_home_page/controllers/full_life_cycle',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
