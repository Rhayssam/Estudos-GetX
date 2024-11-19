import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/features/gerenciamento_de_rotas/off/page1.dart';

import '../../../core/widgets/custom_elevated_button.dart';

class Off extends StatelessWidget {
  const Off({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Off'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomElevatedButton(
              texto: 'Ir para a página 1',
              onPressed: () {
                Get.to(() => Page1());
              },
            ),
          ],
        ),
      ),
    );
  }
}
