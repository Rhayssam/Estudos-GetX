import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/core/widgets/custom_elevated_button.dart';
import 'package:jornada_getx/features/gerenciamento_de_rotas/offAll/page1.dart';

class OffAll extends StatelessWidget {
  const OffAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'OffAll'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomElevatedButton(
                texto: 'Ir para a página 1',
                onPressed: () {
                  Get.to(() => Page1());
                })
          ],
        ),
      ),
    );
  }
}
