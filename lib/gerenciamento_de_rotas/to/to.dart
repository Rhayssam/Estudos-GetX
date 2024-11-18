import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/gerenciamento_de_rotas/to/page1.dart';
import 'package:jornada_getx/gerenciamento_de_rotas/to/page2.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/core/widgets/custom_elevated_button.dart';

class To extends StatelessWidget {
  const To({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'To',
      ),
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