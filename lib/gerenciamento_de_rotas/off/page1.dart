import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/gerenciamento_de_rotas/off/page2.dart';

import '../../core/widgets/custom_elevated_button.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Off - Página 1'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomElevatedButton(
              texto: 'Ir para a página 2',
              onPressed: () {
                Get.to(() => Page2());
              },
            ),
          ],
        ),
      ),
    );
  }
}
