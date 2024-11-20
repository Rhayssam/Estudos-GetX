import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jornada_getx/core/widgets/custom_app_bar.dart';
import 'package:jornada_getx/core/widgets/custom_elevated_button.dart';

class RotasHomePage extends StatelessWidget {
  const RotasHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: '1 - Gerenciamento de Rotas',
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomElevatedButton(
              texto: 'To',
              onPressed: () {
                Get.toNamed('/rotas_home_page/to');
              },
            ),
            CustomElevatedButton(
              texto: 'Back',
              onPressed: () {
                Get.toNamed('/rotas_home_page/back');
              },
            ),
            CustomElevatedButton(
              texto: 'Off',
              onPressed: () {
                Get.toNamed('/rotas_home_page/off');
              },
            ),
            CustomElevatedButton(
              texto: 'OffAll',
              onPressed: () {
                Get.toNamed('/rotas_home_page/offAll');
              },
            ),
            CustomElevatedButton(
              texto: 'Envio de Parâmetros',
              onPressed: () {
                Get.toNamed('/rotas_home_page/envioParametros');
              },
            ),
            CustomElevatedButton(
              texto: 'Await de Parâmetros',
              onPressed: () {
                Get.toNamed('/rotas_home_page/awaitParametros');
              },
            ),
          ],
        ),
      ),
    );
  }
}