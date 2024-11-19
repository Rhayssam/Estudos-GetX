import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/features/gerenciamento_de_rotas/offAll/page3.dart';

import '../../../core/widgets/custom_elevated_button.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'OffAll - Página 2'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomElevatedButton(
                texto: 'Ir para a Página 3',
                onPressed: () {
                  Get.to(() => Page3());
                })
          ],
        ),
      ),
    );
  }
}
