import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/features/gerenciamento_de_dependencias/initialBinding/auth_model.dart';

class InitialBindingPage extends StatelessWidget {
  const InitialBindingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Initial Binding'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Get.find<AuthModel>().name,
            ),
            Text(
              Get.find<AuthModel>().email,
            ),
            Text(
              Get.find<AuthModel>().curso,
            ),
          ],
        ),
      ),
    );
  }
}
