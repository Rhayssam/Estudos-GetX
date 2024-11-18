import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/core/widgets/custom_elevated_button.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Back - Página 2'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Get.back()',
              style: TextStyle(
                fontSize: 32.0,
              ),
            ),
            CustomElevatedButton(
              texto: 'Voltar para a Página 1',
              onPressed: () {
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}
