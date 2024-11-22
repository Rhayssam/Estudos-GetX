import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/features/gerenciamento_de_dependencias/bindings/bindings_controller.dart';

class BindingsPage extends StatelessWidget {
  const BindingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Bindings'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Get.find<BindingsController>().nome,
              style: TextStyle(
                fontSize: 24.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
